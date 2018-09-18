//Example

Button button;

void setup()
{
  size(400,300);
  button = new Button();
}

void draw()
{
  background(100);
  
  //button.Ellipse();                          // Uncomment this to get an Ellipse
  button.button(width/2,height/2,200,70);      // Positon and Size of button           bButton(x-position,y-position,length,width);           //bButton(float,float,float,float);
  button.bColor(98,55,200);                    // Color of button                      bColor(red,green,blue);                                //bColor(int,int,int);
  button.bStroke(255,255,255,3);               // Stroke Color and Weight              bStroke(red,green,blue,StrokeWeight);                  //bStroke(int,int,int,int,int);
  button.bEdge(0,0,0,0);                       // Curve the edges if(rectangle)        bEdge(top-left,top-right,bottom-right,bottom-left);    //bEdge(float,float,float,float);
  button.Text("Button",255,255,255,25);        // Add Text,its Color and Size          Text("Text",red,green,blue,size);                      //Text(String,int,int,int,int);
  button.mouseOver(125,85,230);                // Color when Mouse is over the button  mouseOver(red,green,blue);                             //mouseOver(int,int,int);
  button.bFont("Times New Roman");             // Change Font                          bFont("Font Name");                                    //bFont(String);
  button.drawButton();                         // Draws the Button
}
