########################Example 2.2.2 ########################
#############绘制二元正态密度函数图形和等高线 （plot bivariate normal density)

#Figure 2.1

##参数设置：均值，标准差， 和相关系数（set the parameters: mean, standard deviation, and correlation.）
##大家可以尝试设置不同参数，然后观察图形的区别
mu1 = 0; sigma1 = 1; 
mu2 = 0; sigma2 = 1; 
rho = 0


#定义密度函数（define the density function）
z = function(x,y){
  A = 1/(2*pi*sigma1*sigma2*sqrt(1-rho^2))
  B = -1/(2*1-rho^2)
  C = ((x-mu1)/sigma1)^2
  D = 2*rho*((x-mu1)/sigma1)*((y-mu2)/sigma2)
  E = ((y-mu2)/sigma2)^2
  
  return(A*exp(B*(C-D+E)))
}

##给定x和y数值，计算密度数值（create the density value）
x = y = seq(-3, 3, 0.1)
z = outer(x, y, z)

#画出密度函数3D图形（create 3D plot）
persp(x, y, z, col = "pink")

#画出等高线图（create contour plot）
contour(x,y,z)
