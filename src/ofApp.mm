#include "ofApp.h"

#define RADIUS					30
ofPoint lastTouch;

//--------------------------------------------------------------
void ofApp::setup(){
    lastTouch.set(0,0);
    ofBackground(0, 0, 120);
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    ofEnableAlphaBlending();
    if(lastTouch.x!=0 && lastTouch.y!=0){
        ofSetColor(23,250,120);
        ofFill();
        ofEllipse(lastTouch.x,lastTouch.y, 5, 40);
        ofEllipse(lastTouch.x,lastTouch.y, 40, 5);
        ofCircle (lastTouch.x+60,lastTouch.y+60, 5);
        ofCircle (lastTouch.x-60,lastTouch.y-60, 5);
        ofCircle (lastTouch.x+10,lastTouch.y-10, 2);
        ofCircle (lastTouch.x-10,lastTouch.y+10, 2);
    }
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){
    lastTouch.set(touch.x,touch.y);
}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}

