var stx = argument0;

for (var iq = 1; iq <= string_length(stx); iq++)
{
    var chx = ord(string_char_at(stx, iq));
    
    if ((chx >= 3584 && chx <= 3711) || (chx >= 63232 && chx <= 63258))
        return 1;
}
// （○╹◡╹○）
