// Auto-generated. Do not edit!

// (in-package agn_leg_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class legmsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
      this.first = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = [];
      }
      if (initObj.hasOwnProperty('first')) {
        this.first = initObj.first
      }
      else {
        this.first = 0;
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type legmsg
    // Serialize message field [count]
    bufferOffset = _arraySerializer.int64(obj.count, buffer, bufferOffset, null);
    // Serialize message field [first]
    bufferOffset = _serializer.int64(obj.first, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = _serializer.int64(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type legmsg
    let len;
    let data = new legmsg(null);
    // Deserialize message field [count]
    data.count = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [first]
    data.first = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.count.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agn_leg_detection/legmsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '575cf73be3bb238f762d331a4b3c6e57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[] count
    int64 first
    int64 end
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new legmsg(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = []
    }

    if (msg.first !== undefined) {
      resolved.first = msg.first;
    }
    else {
      resolved.first = 0
    }

    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = 0
    }

    return resolved;
    }
};

module.exports = legmsg;
