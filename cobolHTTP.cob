      $set sourceformat"variable"

       program-id. Program1 as "testhttppost.Program1".

       environment division.

       configuration section.

       repository.

           class HttpWebRequest as "System.Net.HttpWebRequest"

           class HttpWebResponse as "System.Net.HttpWebResponse"

           class WebRequest as "System.Net.WebRequest"

           class clsstring as "System.String"

           class clsencoding as "System.Text.ASCIIEncoding"

           class clsConsole as "System.Console"

           class clsByte as "System.Byte[]"

           class clsStream as "System.IO.Stream"

       .

       data division.

       working-storage section.

       01  myHttpWebRequest       HttpWebRequest.

       01  myHttpWebResponse     HttpWebResponse.

       01  inputData              clsString.

       01  postData               clsString.

       01  encoding               clsencoding.

       01  byte1                    clsByte.

       01  newStream           clsStream.

       procedure division.

         set myHttpWebRequest to WebRequest::"Create"("http://www.contoso.com/codesnippets/next.asp") as HttpWebRequest

         set myHttpWebRequest::"Method" to "POST"

         invoke clsConsole::"WriteLine"("\nPlease enter the data to be posted to the (http://www.contoso.com/codesnippets/next.asp) Uri :")

      *> Create a new string object to POST data to the Url.

         set inputData to clsConsole::"ReadLine"()

         set postData to clsString::"Concat"("firstone=", inputData)

         set encoding to clsEncoding::"New"()

         set byte1 to encoding::"GetBytes"(postData)

      *> Set the content type of the data being posted.

         set myHttpWebRequest::"ContentType" to "application/x-www-form-urlencoded"

      *> Set the content length of the string being posted.

         set myHttpWebRequest::"ContentLength" to byte1::"Length"

         set newStream to myHttpWebRequest::"GetRequestStream"()

         invoke newStream::"Write"(byte1, 0, byte1::"Length")

         invoke clsConsole::"WriteLine"("The value of 'ContentLength' property after sending the data is {0}",  myHttpWebRequest::"ContentLength")

         set myHttpWebResponse to myHttpWebRequest::"GetResponse"() as HttpWebResponse

      *> Close the Stream object.

         invoke newStream::"Close"()

         goback.

       end program Program1.
