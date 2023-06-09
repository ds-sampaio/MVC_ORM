unit Utils.FormatCustom;

interface

uses
  System.SysUtils;

type
  TFormatCustom = class
    private
    public
      class constructor Create;
      destructor Destroy; override;
      class function FormatFloatCustom(aValue: Double; aTam: Integer = 15 ;aDec : Integer = 2): String;
      class function StrToCurrency(const Value: string): Currency;
  end;

implementation

{ TFormatCustom }

class constructor TFormatCustom.Create;
begin

end;

destructor TFormatCustom.Destroy;
begin

  inherited;
end;

class function TFormatCustom.FormatFloatCustom(aValue: Double; aTam: Integer = 15 ;aDec : Integer = 2): String;
begin
  var Value := FloatToStrF(aValue, ffFixed, aTam, aDec);

  case aDec of
    2 : Result := FormatFloat('#,##0.00', StrToFloat(Value));
    3 : Result := FormatFloat('#,##0.000', StrToFloat(Value));
    4 : Result := FormatFloat('#,##0.0000', StrToFloat(Value));
    5 : Result := FormatFloat('#,##0.00000', StrToFloat(Value));
    6 : Result := FormatFloat('#,##0.000000', StrToFloat(Value));
    7 : Result := FormatFloat('#,##0.0000000', StrToFloat(Value));
    8 : Result := FormatFloat('#,##0.00000000', StrToFloat(Value));
    9 : Result := FormatFloat('#,##0.000000000', StrToFloat(Value));
    10: Result := FormatFloat('#,##0.0000000000', StrToFloat(Value));
    11: Result := FormatFloat('#,##0.00000000000', StrToFloat(Value))
    else
       Result := FormatFloat('#,##0.00', StrToFloat(Value));
  end;

end;

class function TFormatCustom.StrToCurrency(const Value: string): Currency;
var
  cleanedValue: string;
begin
  cleanedValue := StringReplace(Value, '.', '', [rfReplaceAll]);
//  cleanedValue := StringReplace(cleanedValue, ',', '', [rfReplaceAll]);
  Result := StrToCurrDef(cleanedValue, 0);
end;

end.
