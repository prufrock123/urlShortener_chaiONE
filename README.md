== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.


#This URL shortener works off base 36

###According to Wikipedia:

>Base 36 is a positional numeral system using 36 as the radix. The choice of 36 is convenient 
>in that the digits can be represented using the Arabic numerals 0–9 and the Latin letters A–Z(>the ISO basic Latin alphabet). Base 36 is therefore the most compact case-insensitive 
>alphanumeric numeral system using ASCII characters, although its radix economy is poor. While 
>this article uses upper case letters, in practice lower case letters are often used to avoid 
>confusion between numbers that look like upper case letters, for example '0O', '1I', '2Z', 
>'5S', '6G', and '8B'.

This allows us to take the unique ID our app creates for a link and convert it into a highly compact stringified representation of that link.  Our app can then 