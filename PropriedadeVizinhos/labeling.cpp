#include <stdio.h>
#include<opencv4/opencv2/core.hpp>
#include<iostream>
#include<opencv4/opencv2/highgui.hpp>
#include<opencv4/opencv2/imgproc.hpp>
using namespace cv;


int main(int argc, char** argv )
{
    Mat imageBolhas = imread("./images/bolhas.png",IMREAD_GRAYSCALE);
    Mat copiaImagemBolhas = imageBolhas.clone();
    double altura= imageBolhas.size().height;
    double largura= imageBolhas.size().width;
    int rotulo = 0;
    for(int linha=0;linha<altura;linha++){
        for(int coluna = 0;coluna<largura;coluna++){
            if(copiaImagemBolhas.at<u_int8_t>(linha,coluna)==255){
                Point semente(coluna,linha);
                floodFill(copiaImagemBolhas,semente,rotulo);
                rotulo+=1;
            }
        }
    }
    //vai de linha em linha preenchendo os pixels
    // preencherMatriz(0,altura/4,0,largura/4,image);
    
    // neighboorPixelsUsingFloodFill(image);
    imshow("Saida Img original ",imageBolhas);
    imshow("Saida Img copia ",copiaImagemBolhas);
    waitKey(0);
    
 return 0; 
}