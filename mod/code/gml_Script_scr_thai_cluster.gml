var text = argument0;
var i = argument1;
var cluster = string_char_at(text, i);
var j = i + 1;

while (j <= string_length(text))
{
    var next_ch = string_char_at(text, j);
    var next_code = ord(next_ch);
    
    if (scr_is_thai_combining(next_ch))
    {
        cluster += next_ch;
        j++;
    }
    else
    {
        break;
    }
}

return cluster;
// （○╹◡╹○）
