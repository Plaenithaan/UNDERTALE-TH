var stx = argument0;
var thainamelengthq = 0;

for (var qqx = 1; qqx <= string_length(stx); qqx++)
{
    var chqx = string_char_at(stx, qqx);
    
    if (!scr_is_thai_combining(chqx))
        thainamelengthq += 1;
}

return thainamelengthq;
// （○╹◡╹○）
