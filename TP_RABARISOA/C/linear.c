
#include <stdio.h>

float prediction(float *features, int n_features) {
  float pred = -8152.937710156519;
  pred += 717.2583697096838 * features[0];
  pred += 36824.195974256305 * features[1];
  pred += 101571.84002157034 * features[2];

  return pred;
}

int main() {
  float features_test[3] = {205.0,2.0,0.0};
  float pred = prediction(features_test,3);
  printf("Predicted price is %f",pred);
  return 0;
}
