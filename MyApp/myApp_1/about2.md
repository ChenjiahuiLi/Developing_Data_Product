## How to play with this app~
Well, the sidebar include 5 sections. Let me introduce you from top of the sidebar to the bottom.

```{}
Section 1: Basic coodinate system.
The X and Y select boxs allow you to choose two variables as the x and y of the plot.
```
```{}
Section 2: Change the color of the dots in plot.
The Color selec box allow you to choose a variable and change the color of the dots in the plot.
Color here is different from " color " people usually refer to.
It's not single color like red or blue, but to map the values of the Color variable into the x and y , and create a 3D like plot. ( pardon me for my poor English, I will use an example to explain this)
For instance, 
If I choose mpg as X, cyl as Y, you can see that the dots distribute in 3 lines: y=8, y=6 and y=4, that's because the cyl variable only has 3 levels. 
Then, if I choose vs as Color, you can see that some dots' color have been changed: dots on line y=8 are mainly darkblue, 2 dots on line y=6 are bright blue, and 3 dot on line y=4 is darkblue. Recall that variable am has only 2 levels. So the divergence in color reflect sample's vs value: the dots in the left-downside of the plot reflect that this car has 4 cylinders, it uses nearly 34 gallon petrol per mile and it's a manual one; on contrary, the dots in the right-upperside of the plot reflet that this car has 8 cylinders, it uses nearly 11 gallon petrol per mile and it's a automatic one.
See? This is how the Color variable could use the 2D plot to reflect 3 dimentional information.
```
```{}
Section 3: Jitter or smooth.
For people want to perform a regression model on the dataset, you will want to select a way to fit a line to the data. Well, here you can choose the Smooth checkbox and it will present you with a smooth line of regression.
For people want to see the whole picture of the dataset, you can choose the Jitter checkbox and it will show all the samples within the dataset on the plot.
```
```{}
Section 4: Biggest advantage of ggplot2: facets
Sometimes the dataset is too big and you want to separate the plot into different catagories, creating facets will satisfy your need.
```
