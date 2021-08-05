<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 

<title>설문등록폼</title> 

<meta name="generator" content="Namo WebEditor v4.0"> 

<style> 

A:link {FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: "굴림", "돋움"; TEXT-DECORATION: none} 

A#_A1 {FONT-SIZE: 12px; COLOR: blue; FONT-FAMILY: "굴림", "돋움"; TEXT-DECORATION: underline}

A#_A2 {FONT-SIZE: 12px; COLOR: #871212; FONT-FAMILY: "굴림", "돋움"; TEXT-DECORATION: underline} 

A:visited {FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: "굴림", "돋움"; TEXT-DECORATION: none} 

A:hover {FONT-SIZE: 12px; COLOR: red; FONT-FAMILY: "굴림", "돋움"; TEXT-DECORATION: underline} 

BODY {FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: "굴림", "굴림체", "돋움", "돋움체"} 

TABLE {FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: "굴림", "굴림체", "돋움", "돋움체"} 

TR {FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: "굴림", "굴림체", "돋움", "돋움체"} 

TD {FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: "굴림", "굴림체", "돋움", "돋움체"} 

P {line-height: 22px; margin-top:0; margin-bottom:0; FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: "굴림", "굴림체", "돋움", "돋움체"} 

p#_p1 {line-height:20px; margin-top:0; margin-bottom:0;font-size: 12px; font-family:굴림,돋움,Seoul,arial,helvetica; text-decoration: none; color: white;} 

p#_p2 {line-height:18px; margin-top:0; margin-bottom:0;font-size: 12px; font-family:굴림,돋움,Seoul,arial,helvetica; text-decoration: none; color: black;} 

p#_p3 {line-height:25px; margin-top:0; margin-bottom:0;font-size: 12px; font-family:굴림,돋움,Seoul,arial,helvetica; text-decoration: none; color: black;} 

</style> 

<script language="javascript"> 

function writecheck(){ 

        var form = document.make_form; 

        if(form.question.value.length==0) 

        { 

                alert("질문 내용을 입력해 주세요."); 

                form.question.focus(); 

                return false; 

        } 

        if(form.answer1.value.length==0) 

        { 

                alert("답변1 내용을 입력해 주세요."); 

                form.answer1.focus(); 

                return false; 

        } 

        if(form.answer2.value.length==0) 

        { 

                alert("답변2 내용을 입력해 주세요."); 

                form.answer2.focus(); 

                return false; 

        } 

        form.submit(); 

} 

</script> 

</head> 

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red"> 
<%@ include file="../inc/header.jsp" %>
<p><b><font size="3">★ LIVE POLL</font></b><font size="2">(설문등록폼)</font></p><p> </p> 

<form name="make_form" method="post" action="make_poll_act.jsp"> 
<table border="1" bgcolor="gray" width="600" align="center" > 

    <tr><td><table border="0" cellpadding="2" cellspacing="1" width="600" ><tr><td width="126" align="center" bgcolor="silver" height="121"> 

                        <p>질문내용</p></td> 

                    <td width="471" colspan="3" bgcolor="white" height=221"> 

                        <p> <textarea name="question" rows="8" cols="60"></textarea></p></td><tr>  <tr> 

                    <td width="126" height="104" align="center" bgcolor="silver"> 

                        <p>답변내용</p> 

                    </td> 

                    <td width="471" height="104" colspan="3" bgcolor="white"> 

                        <p> 1.<input type="text" name="answer1" maxlength="100" size="60"></p> 

                        <p> 2.<input type="text" name="answer2" maxlength="100" size="60"></p> 

                        <p> 3.<input type="text" name="answer3" maxlength="100" size="60"></p> 

                        <p> 4.<input type="text" name="answer4" maxlength="100" size="60"></p> 

                    </td> 

                </tr> 

                <tr> 

                    <td width="126" height="27" align="center" bgcolor="silver"> 

                        <p>설문기간</p> 

                    </td> 

                    <td width="183" height="27" bgcolor="white"> 

                        <p> <select name="period" size="1"> 

                            <option value="1" selected>1일</option> 

                            <option value="2">2일</option> 

                            <option value="9">9일</option> 

                            <option value="10">10일</option> 

                            <option value="15">15일</option> 

                            <option value="20">20일</option> 

                            <option value="25">25일</option> 

                            <option value="30">30일</option> 

                            <option value="60">60일</option> 

                            <option value="90">90일</option> 

                            <option value="120">120일</option> 

                            <option value="150">150일</option> 

                            <option value="180">180일</option> 

                            <option value="240">240일</option> 

                            <option value="300">300일</option> 

                            <option value="365">365일</option> 

                            </select></p> 

                    <td width="471" colspan="3" bgcolor="white" height="36"> 

                        <p> <input type="submit" value="등록하기" style="font-family:굴림; font-size:10pt;" on_click="return writecheck();"> 

                            <input type="reset" name="reset" value="취 소" style="font-family:굴림; font-size:10pt;"></p> 
  </td> 
  </tr>  
  </table>  
  </form>
  </body>
  </html>