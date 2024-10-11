#include <iostream>
#include <opencv2/core/hal/interface.h>
#include <opencv2/core/mat.hpp>
#include <opencv2/core/types.hpp>
#include <opencv4/opencv2/core.hpp>
#include <opencv4/opencv2/highgui.hpp>
#include <opencv4/opencv2/imgproc.hpp>
using namespace cv;
cv::Mat removeFromEdges(const cv::Mat img) {
  int altura = img.size().height;
  int largura = img.size().width;
  for (int coluna = 0; coluna < img.size().width; coluna++) {
    if (img.at<uchar>(0, coluna) == 255) {
      cv::floodFill(img, cv::Point_<uchar>(coluna, 0), 0);
    }
    if (img.at<uchar>(altura - 1, coluna) == 255) {
      cv::floodFill(img, cv::Point_<uchar>(coluna, altura - 1), 0);
    }
  }

  for (int linha = 0; linha < img.size().height; linha++) {
    if (img.at<uchar>(linha, 0) == 255) {
      cv::floodFill(img, cv::Point_<uchar>(0, linha), 0);
    }
    if (img.at<uchar>(linha, largura - 1) == 255) {
      cv::floodFill(img, cv::Point_<uchar>(largura - 1, linha), 0);
    }
  }

  return img;
}
// this exercise is necessary to remove the balls that are in the borders, and
// mark everyone that has a space inside.
int main(int argc, char **argv) {
  Mat imageBolhas = imread("./images/bolhas.png", IMREAD_GRAYSCALE);
  Mat copiaImagemBolhas = imageBolhas.clone();
  double altura = imageBolhas.size().height;
  double largura = imageBolhas.size().width;
  int rotulo = 0;
  /*
  for (int linha = 0; linha < altura; linha++) {
    for (int coluna = 0; coluna < largura; coluna++) {
      if (copiaImagemBolhas.at<u_int8_t>(linha, coluna) == 255) {
        Point semente(coluna, linha);
        floodFill(copiaImagemBolhas, semente, 150);
        rotulo += 1;
      }
    }
  }
       */
  // vai de linha em linha preenchendo os pixels
  //  preencherMatriz(0,altura/4,0,largura/4,image);
  copiaImagemBolhas = removeFromEdges(copiaImagemBolhas);
  // neighboorPixelsUsingFloodFill(image);
  imshow("Saida Img original ", imageBolhas);
  imshow("Saida Img copia ", copiaImagemBolhas);
  waitKey(0);

  return 0;
}
