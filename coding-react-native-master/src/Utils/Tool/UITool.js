import {
  findNodeHandle,
  UIManager
} from 'react-native';

export default class UITool {
   static layout = (ref)=>{
    const handle = findNodeHandle(ref);
    return new Promise((resolve) => {
      UIManager.measure(handle, (x, y, width, height, pageX, pageY) => {
        resolve({
          x: x,
          y: y,
          width: width,
          height: height,
          pageX: pageX,
          pageY: pageY
        });
      });
    });
  }
}