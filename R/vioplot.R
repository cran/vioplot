library(sm)
vioplot <- function(x,...,range=1.5,h=NULL,ylim=NULL,names=NULL)
{
    # process multiple datas
    datas <- list(x,...)
    n <- length(datas)
   
    # pass 1
    #
    # - calculate base range
    # - estimate density
    #
    
    # setup parameters for density estimation
    upper  <- vector(mode="numeric",length=n)
    lower  <- vector(mode="numeric",length=n) 
    q1     <- vector(mode="numeric",length=n)
    q3     <- vector(mode="numeric",length=n)
    med    <- vector(mode="numeric",length=n)
    base   <- vector(mode="list",length=n)
    height <- vector(mode="list",length=n)
    baserange <- c(Inf,-Inf)
    
    # global args for sm.density function-call   
    args <- list(display="none")
       
    if (!(is.null(h)))
        args <- c(args, h=h)
   
            
    for(i in 1:n) {

        data<-datas[[i]]
        
        # calculate plot parameters
        #   1- and 3-quantile, median, IQR, upper- and lower-adjacent
        
        data.min <- min(data)
        data.max <- max(data)
        q1[i]<-quantile(data,0.25)
        q3[i]<-quantile(data,0.75)
        med[i]<-median(data)
        iqd <- q3[i]-q1[i]
        upper[i] <- min( q3[i] + range*iqd, data.max )
        lower[i] <- max( q1[i] - range*iqd, data.min )
        
       
        #   strategy:
        #       xmin = min(lower, data.min))
        #       ymax = max(upper, data.max))
        #

        est.xlim <- c( min(lower[i], data.min), max(upper[i], data.max) ) 
        
        # estimate density curve
        
        smout <- do.call("sm.density", c( list(data, xlim=est.xlim), args ) )

        
        # calculate stretch factor
        #
        #  the plots density heights is defined in range 0.0 ... 0.5 
        #  we scale maximum estimated point to 0.4 per data
        #
        
        hscale <- 0.4/max(smout$estimate)
        
        
        # add density curve x,y pair to lists
        
        base[[i]]   <- smout$eval.points
        height[[i]] <- smout$estimate * hscale
        
        
        # calculate min,max base ranges
        
        t <- range(base[[i]])
        baserange[1] <- min(baserange[1],t[1])
        baserange[2] <- max(baserange[2],t[2])

    }
   
    # pass 2
    #
    # - plot graphics
    
    # setup parameters for plot

    xlim <- c(0.5, n+0.5)
    
    if (is.null(ylim)) {
        ylim <- baserange
    }

    if (is.null(names)) {
        label <- c("",1:n,"")
    } else {
        label <- c("",names,"")
    }

    boxwidth <- 0.05
    
        
    # setup plot

    plot.new()
    plot.window(xlim = xlim, ylim = ylim)
   
    
    # setup axis
    
    axis(1,at = c(0:(n+1)), label=label )
    axis(2)
    box()

    
    # plot data
    
    for(i in 1:n) {
       
        # plot left/right density curve
        
        lines ( i-height[[i]], base[[i]] )
        lines ( i+height[[i]], base[[i]] )

        # close density curves

        last <- length(height[[i]])
        lines ( c( i-height[[i]][1] , i+height[[i]][1] ), c( base[[i]][1] , base[[i]][1] ) )
        lines ( c( i-height[[i]][last] , i+height[[i]][last] ), c( base[[i]][last] , base[[i]][last] ) )

        
        # plot 50% KI box
        
        rect( i-boxwidth/2, q1[i], i+boxwidth/2, q3[i], col="black")

        # plot IQR

        lines( c( i, i), c(lower[i], upper[i]) )
        
        # plot median point
        
        points( i, med[i], pch=19, col="white" )

    }

    invisible (list( upper=upper, lower=lower, median=med, q1=q1, q3=q3))
}

