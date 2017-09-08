int dcn = 8000;
float x = 400;
float y = 400;
float size = 10;
int[] Xs = new int[dcn];
int[] Ys = new int[dcn];
int[] speedX = new int[dcn];
int[] speedY = new int[dcn];
boolean[] isAlive = new boolean[dcn];
int colVal = 0;

void setup()
{
  size(800, 800, P2D);
  colorMode(HSB);
  for( int i=0; i < dcn; i++ )
  {
    Xs[i] = 400;
    Ys[i] = 400;
    speedX[i] = (int) random(-10,10);
    speedY[i] = (int) random(-10,10);
    isAlive[i] = false;
  }
  isAlive[0] = true;
}

void draw()
{
  background(colVal, 250, 250);
  colVal++;
  if( colVal > 255 )
  {
    colVal = 0;
  }
  for( int i=0; i < dcn; i++ )
  {
    fill(0);
    ellipse(Xs[i], Ys[i], size, size);
  }
  Move();
  BounceWall();
  Dup();
}

void BounceWall()
{
  for( int i=0; i < dcn; i++ )
  {
    if( Xs[i] > width )
    {
      speedX[i] = speedX[i] * -1;
    }
    if( Ys[i] < 0 )
    {
      speedY[i] = speedY[i] * -1;
    }
    if( Xs[i] < 0 )
    {
      speedX[i] = speedX[i] * -1;
    }
    if( Ys[i] > height )
    {
      speedY[i] = speedY[i] * -1;
    }
  }
}

void Move()
{
  for( int i=0; i < dcn; i++ )
  {
    Xs[i] = Xs[i] + speedX[i];
    Ys[i] = Ys[i] + speedY[i];
  }
}

void Dup()
{
  
}