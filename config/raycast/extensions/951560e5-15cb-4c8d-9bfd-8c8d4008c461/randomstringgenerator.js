"use strict";var n=Object.defineProperty;var d=Object.getOwnPropertyDescriptor;var i=Object.getOwnPropertyNames;var p=Object.prototype.hasOwnProperty;var s=(o,r)=>{for(var e in r)n(o,e,{get:r[e],enumerable:!0})},u=(o,r,e,a)=>{if(r&&typeof r=="object"||typeof r=="function")for(let t of i(r))!p.call(o,t)&&t!==e&&n(o,t,{get:()=>r[t],enumerable:!(a=d(r,t))||a.enumerable});return o};var c=o=>u(n({},"__esModule",{value:!0}),o);var f={};s(f,{default:()=>m});module.exports=c(f);var l=require("@raycast/api"),m=async()=>{(0,l.open)("devutils://randomstringgenerator?clipboard")};0&&(module.exports={});
