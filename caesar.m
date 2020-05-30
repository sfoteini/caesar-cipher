% CAESAR  Caesar's cipher encryption algorithm
%
% code = caesar(vector, shift), returns the encypted text 
% of the given character vector.


function output = caesar(vector, shift)
   % The shift amount is a value between 0 and 94
   shift = shift - 95 * fix(shift/95);

   % Convert string to double
   code = double(vector);
   secret = code;
   
   % Find the size of the given character vector
   a = size(vector, 2);

   for i = 1:a
       % Check if the new ASCII value is out of limits
       % If ASCII value goes below 32

       if code(i) + shift < 32 
           secret(i) = 126 - 31 + code(i) + shift;

       % If ASCII value goes beyond 126

       elseif code(i) + shift > 126
           secret(i) = 32 + code(i) + shift - 127;

       % Normal condition

       else
           secret(i) = code(i) + shift;
       end
   end
   
   output = char(secret);

end