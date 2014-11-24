== README


#This URL shortener works off base 36

###According to Wikipedia:

>Base 36 is a positional numeral system using 36 as the radix. The choice of 36 is convenient 
>in that the digits can be represented using the Arabic numerals 0–9 and the Latin letters A–Z(>the ISO basic Latin alphabet). Base 36 is therefore the most compact case-insensitive 
>alphanumeric numeral system using ASCII characters, although its radix economy is poor. While 
>this article uses upper case letters, in practice lower case letters are often used to avoid 
>confusion between numbers that look like upper case letters, for example '0O', '1I', '2Z', 
>'5S', '6G', and '8B'.

This allows us to take the unique ID our app creates for a link and convert it into a highly compact stringified representation of that link.  Our app can then take that path, use the shortened ID of property from the params and look up the corresponding full URL in the database. Our app then redirects the user to that full URL path.

There are some validations as well. Our app has validations on the model that checks for a valid HTTP or HTTPS URI. It also checks for the uniqueness of the URL property in the database to help prevent duplication of records.

At the controller level, our app uses a find_or_create_by method to either return an existing record or create a new record if the previous record does not exist.

We use Ajax to asynchronously load the result of the shortened URL operation.