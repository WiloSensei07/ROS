// Auto-generated. Do not edit!

// (in-package odom_client_server.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class diffodomRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r = null;
      this.phi1 = null;
      this.phi2 = null;
      this.l = null;
    }
    else {
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
      }
      if (initObj.hasOwnProperty('phi1')) {
        this.phi1 = initObj.phi1
      }
      else {
        this.phi1 = 0.0;
      }
      if (initObj.hasOwnProperty('phi2')) {
        this.phi2 = initObj.phi2
      }
      else {
        this.phi2 = 0.0;
      }
      if (initObj.hasOwnProperty('l')) {
        this.l = initObj.l
      }
      else {
        this.l = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type diffodomRequest
    // Serialize message field [r]
    bufferOffset = _serializer.float64(obj.r, buffer, bufferOffset);
    // Serialize message field [phi1]
    bufferOffset = _serializer.float64(obj.phi1, buffer, bufferOffset);
    // Serialize message field [phi2]
    bufferOffset = _serializer.float64(obj.phi2, buffer, bufferOffset);
    // Serialize message field [l]
    bufferOffset = _serializer.float64(obj.l, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type diffodomRequest
    let len;
    let data = new diffodomRequest(null);
    // Deserialize message field [r]
    data.r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [phi1]
    data.phi1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [phi2]
    data.phi2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [l]
    data.l = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'odom_client_server/diffodomRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00289cfff876a99e75fdd52bd84f5aec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 r
    float64 phi1
    float64 phi2
    float64 l
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new diffodomRequest(null);
    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
    }

    if (msg.phi1 !== undefined) {
      resolved.phi1 = msg.phi1;
    }
    else {
      resolved.phi1 = 0.0
    }

    if (msg.phi2 !== undefined) {
      resolved.phi2 = msg.phi2;
    }
    else {
      resolved.phi2 = 0.0
    }

    if (msg.l !== undefined) {
      resolved.l = msg.l;
    }
    else {
      resolved.l = 0.0
    }

    return resolved;
    }
};

class diffodomResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Vx = null;
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('Vx')) {
        this.Vx = initObj.Vx
      }
      else {
        this.Vx = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type diffodomResponse
    // Serialize message field [Vx]
    bufferOffset = _serializer.float64(obj.Vx, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type diffodomResponse
    let len;
    let data = new diffodomResponse(null);
    // Deserialize message field [Vx]
    data.Vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'odom_client_server/diffodomResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e06e770bac41553999830258ee3c4cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 Vx
    float64 theta
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new diffodomResponse(null);
    if (msg.Vx !== undefined) {
      resolved.Vx = msg.Vx;
    }
    else {
      resolved.Vx = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: diffodomRequest,
  Response: diffodomResponse,
  md5sum() { return '8c976f4f21b249dc4f54cfe66d6d9e4f'; },
  datatype() { return 'odom_client_server/diffodom'; }
};
