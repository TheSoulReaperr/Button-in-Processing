class Button
{
  PFont Font = createFont("ArialNarrow",10);
  boolean type = true;
  boolean mouseflag = false;
  String text = "";
  float xPos = 0;
  float yPos = 0;
  float bWidth = 0;
  float bHeight = 0;
  float curve1 = 0;
  float curve2 = 0;
  float curve3 = 0;
  float curve4 = 0;
  int bRed = 0;
  int bGreen = 0;
  int bBlue = 0;
  int tRed = 0;
  int tGreen = 0;
  int tBlue = 0;
  int textSize = 1;
  int sRed = 0;
  int sGreen = 0;
  int sBlue = 0;
  int sWeight = 1;
  int mOverRed = 0;
  int mOverGreen = 0;
  int mOverBlue = 0;

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  void Ellipse()
  {
    type = false;
  }
  
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  void bColor(int getbRed,int getbGreen,int getbBlue)
  {
    bRed = getbRed;
    bGreen = getbGreen;
    bBlue = getbBlue;
  }
  
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  void button(float getxPos,float getyPos,float getbWidth,float getbHeight)
  {
    xPos = getxPos;
    yPos = getyPos;
    bWidth = getbWidth;
    bHeight = getbHeight;
  }
  
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  void bEdge(int getc1,int getc2,int getc3,int getc4)
  {
    curve1 = getc1;
    curve2 = getc2;
    curve3 = getc3;
    curve4 = getc4;
  }
  
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
  void Text(String getText,int getTr,int getTg,int getTb,int getTSize)
  {
    text = getText;
    textSize = getTSize;
    tRed = getTr;
    tGreen = getTg;
    tBlue = getTb;
  }
  
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  void bStroke(int getsRed,int getsGreen,int getsBlue, int getsWeight)
  {
    sRed = getsRed;
    sGreen = getsGreen;
    sBlue = getsBlue;
    sWeight = getsWeight;
  }
  
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  void mouseOver(int getmOverRed,int getmOverGreen,int getmOverBlue)
  {
    mouseflag = true;
    mOverRed = getmOverRed;
    mOverGreen = getmOverGreen;
    mOverBlue = getmOverBlue;
  }
  
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  

  void bFont(String getbFont)
  {
    Font = createFont(getbFont,10);
  }

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  

  void drawButton()
  {
    if(mouseX > xPos -(bWidth/2) && mouseX < xPos + (bWidth/2) && mouseY > yPos - (bHeight/2) && mouseY < yPos + (bHeight/2) && mouseflag)
    {
      if(type == true)
      {
        fill(mOverRed,mOverGreen,mOverBlue);
        stroke(sRed,sGreen,sBlue);
        strokeWeight(sWeight);
        rectMode(CENTER);
        rect(xPos,yPos,bWidth,bHeight,curve1,curve2,curve3,curve4);
        textAlign(CENTER,CENTER);
        textFont(Font);
        fill(tRed,tGreen,tBlue);
        textSize(textSize+1);
        text(text,xPos,yPos-(bHeight/20));
      }
      else
      {
        fill(mOverRed,mOverGreen,mOverBlue);
        stroke(sRed,sGreen,sBlue);
        strokeWeight(sWeight);
        ellipseMode(CENTER);
        ellipse(xPos,yPos,bWidth,bHeight);
        textAlign(CENTER,CENTER);
        textFont(Font);
        fill(tRed,tGreen,tBlue);
        textSize(textSize+1);
        text(text,xPos,yPos-(bHeight/20));
      }
    }
    else
    {
      if(type == true)
      {
        fill(bRed,bGreen,bBlue);
        stroke(sRed,sGreen,sBlue);
        strokeWeight(sWeight);
        rectMode(CENTER);
        rect(xPos,yPos,bWidth,bHeight,curve1,curve2,curve3,curve4);
        textAlign(CENTER,CENTER);
        textFont(Font);
        fill(tRed,tGreen,tBlue);
        textSize(textSize);
        text(text,xPos,yPos-(bHeight/20));
      }
      else
      {
        fill(bRed,bGreen,bBlue);
        stroke(sRed,sGreen,sBlue);
        strokeWeight(sWeight);
        ellipseMode(CENTER);
        ellipse(xPos,yPos,bWidth,bHeight);
        textAlign(CENTER,CENTER);
        textFont(Font);
        fill(tRed,tGreen,tBlue);
        textSize(textSize);
        text(text,xPos,yPos-(bHeight/20));
      }
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
