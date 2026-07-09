var _input = argument0;
var _len = string_length(_input);

if (_len == 0)
    return "";

var BASE = 1;
var ASC = 2;
var DESC = 4;
var TOP = 8;
var UPPER = 16;
var LOWER = 32;
var TYPE;

for (var i = 0; i < 128; i++)
    TYPE[i] = 0;

for (var c = 1; c <= 48; c++)
    TYPE[c] |= BASE;

TYPE[64] |= BASE;
TYPE[65] |= BASE;
TYPE[27] |= ASC;
TYPE[29] |= ASC;
TYPE[31] |= ASC;
TYPE[40] |= ASC;
TYPE[42] |= ASC;
TYPE[44] |= ASC;
TYPE[46] |= ASC;
TYPE[14] |= DESC;
TYPE[15] |= DESC;

for (var c = 72; c <= 76; c++)
    TYPE[c] |= TOP;

TYPE[49] |= UPPER;
TYPE[52] |= UPPER;
TYPE[53] |= UPPER;
TYPE[54] |= UPPER;
TYPE[55] |= UPPER;
TYPE[71] |= UPPER;
TYPE[77] |= UPPER;

for (var c = 56; c <= 58; c++)
    TYPE[c] |= LOWER;

var _out_str = "";

for (var i = 1; i <= _len; i++)
{
    var _char = string_char_at(_input, i);
    var _c = ord(_char);
    var _prev = (i > 1) ? ord(string_char_at(_input, i - 1)) : 0;
    var _prev2 = (i > 2) ? ord(string_char_at(_input, i - 2)) : 0;
    var _next = (i < _len) ? ord(string_char_at(_input, i + 1)) : 0;
    var _idx = _c - 3584;
    var _idx_p = _prev - 3584;
    var _idx_p2 = _prev2 - 3584;
    var _idx_n = _next - 3584;
    var _t = (_idx >= 0 && _idx < 128) ? TYPE[_idx] : 0;
    var _tp = (_idx_p >= 0 && _idx_p < 128) ? TYPE[_idx_p] : 0;
    var _tp2 = (_idx_p2 >= 0 && _idx_p2 < 128) ? TYPE[_idx_p2] : 0;
    
    if (_c == 3635)
    {
        var _base = ((_tp & LOWER) != 0 && i > 2) ? _prev2 : _prev;
        var _idx_b = _base - 3584;
        var _tb = (_idx_b >= 0 && _idx_b < 128) ? TYPE[_idx_b] : 0;
        _out_str += chr(((_tb & ASC) != 0) ? 63249 : 3661);
        _out_str += "า";
    }
    else
    {
        if ((_t & TOP) != 0)
        {
            var _base = ((_tp & LOWER) != 0 && i > 2) ? _prev2 : _prev;
            var _idx_b = _base - 3584;
            var _tb = (_idx_b >= 0 && _idx_b < 128) ? TYPE[_idx_b] : 0;
            
            if (_next == 3661)
            {
                if ((_tb & ASC) != 0)
                {
                    _out_str += "";
                    var _m = _c;
                    
                    switch (_c)
                    {
                        case 3656:
                            _m = 63251;
                            break;
                        
                        case 3657:
                            _m = 63252;
                            break;
                        
                        case 3658:
                            _m = 63253;
                            break;
                        
                        case 3659:
                            _m = 63254;
                            break;
                        
                        case 3660:
                            _m = 63255;
                            break;
                    }
                    
                    _out_str += chr(_m);
                }
                else
                {
                    _out_str += "ํ";
                    _out_str += chr(_c);
                }
                
                i++;
                continue;
            }
            
            if (_next == 3635)
            {
                _out_str += chr(((_tb & ASC) != 0) ? 63249 : 3661);
                var _m = _c;
                
                switch (_c)
                {
                    case 3656:
                        _m = 63251;
                        break;
                    
                    case 3657:
                        _m = 63252;
                        break;
                    
                    case 3658:
                        _m = 63253;
                        break;
                    
                    case 3659:
                        _m = 63254;
                        break;
                    
                    case 3660:
                        _m = 63255;
                        break;
                }
                
                _out_str += chr(((_tb & ASC) != 0) ? _m : _c);
                _out_str += "า";
                i++;
                continue;
            }
            
            if ((_tb & BASE) != 0)
            {
                if ((_tb & ASC) != 0)
                {
                    var _m = _c;
                    
                    switch (_c)
                    {
                        case 3656:
                            _m = 63237;
                            break;
                        
                        case 3657:
                            _m = 63238;
                            break;
                        
                        case 3658:
                            _m = 63239;
                            break;
                        
                        case 3659:
                            _m = 63240;
                            break;
                        
                        case 3660:
                            _m = 63241;
                            break;
                    }
                    
                    _c = _m;
                }
                else
                {
                    var _m = _c;
                    
                    switch (_c)
                    {
                        case 3656:
                            _m = 63242;
                            break;
                        
                        case 3657:
                            _m = 63243;
                            break;
                        
                        case 3658:
                            _m = 63244;
                            break;
                        
                        case 3659:
                            _m = 63245;
                            break;
                        
                        case 3660:
                            _m = 63246;
                            break;
                    }
                    
                    _c = _m;
                }
            }
            
            if ((_tp & UPPER) != 0 && (_tp2 & ASC) != 0)
            {
                var _m = _c;
                
                switch (_c)
                {
                    case 3656:
                        _m = 63251;
                        break;
                    
                    case 3657:
                        _m = 63252;
                        break;
                    
                    case 3658:
                        _m = 63253;
                        break;
                    
                    case 3659:
                        _m = 63254;
                        break;
                    
                    case 3660:
                        _m = 63255;
                        break;
                }
                
                _c = _m;
            }
        }
        else if (((_t & UPPER) != 0 && (_tp & ASC) != 0) || ((_t & UPPER) != 0 && (_tp & LOWER) != 0 && (_tp2 & ASC) != 0))
        {
            var _m = _c;
            
            switch (_c)
            {
                case 3633:
                    _m = 63248;
                    break;
                
                case 3636:
                    _m = 63233;
                    break;
                
                case 3637:
                    _m = 63234;
                    break;
                
                case 3638:
                    _m = 63235;
                    break;
                
                case 3639:
                    _m = 63236;
                    break;
                
                case 3661:
                    _m = 63249;
                    break;
                
                case 3655:
                    _m = 63250;
                    break;
            }
            
            _c = _m;
        }
        else if ((_t & LOWER) != 0 && (_tp & DESC) != 0)
        {
            var _m = _c;
            
            switch (_c)
            {
                case 3640:
                    _m = 63256;
                    break;
                
                case 3641:
                    _m = 63257;
                    break;
                
                case 3642:
                    _m = 63258;
                    break;
            }
            
            _c = _m;
        }
        else if (_c == 3597 && (_idx_n >= 0 && _idx_n < 128 && (TYPE[_idx_n] & LOWER) != 0))
        {
            _c = 63247;
        }
        else if (_c == 3600 && (_idx_n >= 0 && _idx_n < 128 && (TYPE[_idx_n] & LOWER) != 0))
        {
            _c = 63232;
        }
        
        _out_str += chr(_c);
    }
}

return _out_str;
// （○╹◡╹○）
