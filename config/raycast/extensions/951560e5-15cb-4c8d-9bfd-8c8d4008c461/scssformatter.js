"use strict";var e=Object.defineProperty;var c=Object.getOwnPropertyDescriptor;var p=Object.getOwnPropertyNames;var u=Object.prototype.hasOwnProperty;var d=(o,r)=>{for(var s in r)e(o,s,{get:r[s],enumerable:!0})},f=(o,r,s,l)=>{if(r&&typeof r=="object"||typeof r=="function")for(let t of p(r))!u.call(o,t)&&t!==s&&e(o,t,{get:()=>r[t],enumerable:!(l=c(r,t))||l.enumerable});return o};var i=o=>f(e({},"__esModule",{value:!0}),o);var n={};d(n,{default:()=>m});module.exports=i(n);var a=require("@raycast/api"),m=async()=>{(0,a.open)("devutils://scssformatter?clipboard")};0&&(module.exports={});
