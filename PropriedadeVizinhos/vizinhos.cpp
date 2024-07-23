#include <stdio.h>
#include<opencv4/opencv2/core.hpp>
#include<iostream>
#include<opencv4/opencv2/highgui.hpp>

using namespace cv;

void preencherMatriz
(
int linhaInicial,
int linhaFinal,
int colunaInicial,
int colunaFinal,
Mat imagem
){
    double altura= imagem.size().height;
    double largura= imagem.size().width;
    //vai de linha em linha preenchendo os pixels
    for(int linha =linhaInicial;linha<linhaFinal;linha++){
        for(int coluna =colunaInicial;coluna<colunaFinal;coluna++){
            imagem.at<uint8_t>(linha,coluna)=255;
            imagem.at<uint8_t>(linha,coluna+149)=255;
        }   
    }
    // return imagem;
}
void mudar(int a ){
    a = a*2;
}
int main(int argc, char** argv )
{
    Mat image(Size(300,300),CV_8UC1);
    
    double altura= image.size().height;
    double largura= image.size().width;
    //vai de linha em linha preenchendo os pixels
    preencherMatriz(0,altura/4,0,largura/4,image);
    imshow("Imagem ",image);
    waitKey(0);
    int b= 7;
    mudar(b);
    std::cout<<b;

    
 return 0;
}