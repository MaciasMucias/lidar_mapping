// Auto-generated. Do not edit!

// (in-package socket_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetDistanceFromWallRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDistanceFromWallRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDistanceFromWallRequest
    let len;
    let data = new GetDistanceFromWallRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'socket_manager/GetDistanceFromWallRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDistanceFromWallRequest(null);
    return resolved;
    }
};

class GetDistanceFromWallResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isValid = null;
      this.distance = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('isValid')) {
        this.isValid = initObj.isValid
      }
      else {
        this.isValid = false;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDistanceFromWallResponse
    // Serialize message field [isValid]
    bufferOffset = _serializer.bool(obj.isValid, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDistanceFromWallResponse
    let len;
    let data = new GetDistanceFromWallResponse(null);
    // Deserialize message field [isValid]
    data.isValid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'socket_manager/GetDistanceFromWallResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5ce5a6c4be1c6cf0d2e7b537eee9c1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isValid
    float64 distance
    float64 angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDistanceFromWallResponse(null);
    if (msg.isValid !== undefined) {
      resolved.isValid = msg.isValid;
    }
    else {
      resolved.isValid = false
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDistanceFromWallRequest,
  Response: GetDistanceFromWallResponse,
  md5sum() { return 'f5ce5a6c4be1c6cf0d2e7b537eee9c1c'; },
  datatype() { return 'socket_manager/GetDistanceFromWall'; }
};
