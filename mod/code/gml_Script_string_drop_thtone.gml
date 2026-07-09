var stx = argument0;
var resultx = "";

for (var qq = 1; qq <= string_length(stx); qq++)
{
    var chx = ord(string_char_at(stx, qq));
    
    if (!((chx >= 3656 && chx <= 3660) || (chx >= 63237 && chx <= 63246) || (chx >= 63251 && chx <= 63255)))
    {
        resultx += chr(chx);
    }
}

return resultx;
// （○╹◡╹○）
