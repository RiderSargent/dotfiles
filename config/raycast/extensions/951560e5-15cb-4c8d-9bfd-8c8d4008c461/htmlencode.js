"use strict";var t=Object.defineProperty;var n=Object.getOwnPropertyDescriptor;var p=Object.getOwnPropertyNames;var u=Object.prototype.hasOwnProperty;var a=(e,o)=>{for(var r in o)t(e,r,{get:o[r],enumerable:!0})},i=(e,o,r,c)=>{if(o&&typeof o=="object"||typeof o=="function")for(let l of p(o))!u.call(e,l)&&l!==r&&t(e,l,{get:()=>o[l],enumerable:!(c=n(o,l))||c.enumerable});return e};var m=e=>i(t({},"__esModule",{value:!0}),e);var f={};a(f,{default:()=>s});module.exports=m(f);var d=require("@raycast/api"),s=async()=>{(0,d.open)("devutils://htmlencode?clipboard")};0&&(module.exports={});
