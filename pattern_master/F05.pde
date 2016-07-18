// Double-Cubic Seat 

//------------------------------------------------------------------
float function_DoubleCubicOgee (float x, float a, float b){
  functionName = "Double-Cubic Ogee";
  
  float min_param_a = 0.0 + EPSILON;
  float max_param_a = 1.0 - EPSILON;
  float min_param_b = 0.0;
  float max_param_b = 1.0;

  a = constrain(a, min_param_a, max_param_a); 
  b = constrain(b, min_param_b, max_param_b); 
  float y = 0;
  if (x <= a){
    y = b - b*pow(1.0-x/a, 3.0);
  } 
  else {
    y = b + (1.0-b)*pow((x-a)/(1.0-a), 3.0);
  }
  return y;
}
