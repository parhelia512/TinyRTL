// ---------------------------------------------------------------------------
// File:   RTL_Object.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
// ---------------------------------------------------------------------------
// TObjectm and IUnknown has to be defined first as forward class ...
// ---------------------------------------------------------------------------

type
    TObject = class
    private
        class var   FClassInstance: TObject;
        class function GetInstance: TObject; static;
    public
        constructor Create;
        destructor Destroy; virtual;
        
        function ClassName: String; virtual;
        class function ClassParent: TObject; virtual;

        class procedure InitInstance(Instance: Pointer); virtual;
        class function  NewInstance : TObject; virtual;
        class procedure FreeInstance; virtual;
        
        function SafeCallException( exceptobject: tobject; exceptaddr: codepointer ): HResult; virtual;
        procedure DefaultHandler(var message); virtual;
        
        procedure Free; virtual;

        procedure AfterConstruction; virtual;
        procedure BeforeDestruction; virtual;
        
        class property Instance: TObject read GetInstance;
    end;

    TClass = class of TObject;
    
{$endif}

{$ifdef windows_source}
{$M-}
// ---------------------------------------------------------------------------
// TObject: the base class of all sub classes:
// ---------------------------------------------------------------------------
constructor TObject.Create;
begin
    TObject.InitInstance(self);
end;

destructor TObject.Destroy;
begin
    FreeInstance;
end;
procedure TObject.AfterConstruction;
begin
//
end;
procedure TObject.BeforeDestruction;
begin
//
end;

function TObject.ClassName: String;
begin
    result := 'TObject';
end;

class function TObject.GetInstance: TObject;
begin
    result := nil;
    if FClassInstance = nil then
    begin
        MessageBoxA(0,
        PChar('Error: instance is not allocated.'),
        PChar('Error'), 0);
        exit;
    end;
    result := FClassInstance;
end;
class function TObject.ClassParent: TObject;
begin
    result := nil;
end;

procedure TObject.Free;
begin
    if self <> nil then
    FreeInstance;
end;

class function TObject.NewInstance : TObject;
begin
    GetMem(Pointer(FClassInstance), SizeOf(TObject));
end;

class procedure TObject.InitInstance(Instance: Pointer);
begin
    PPointer(Instance)^ := Pointer(self);
end;

class procedure TObject.FreeInstance;
begin
    FreeMem(Pointer(FClassInstance));
    if self <> nil then
    begin
        FreeMem(Pointer(self));
    end;
end;

function SafeCallException( obj: codepointer; exceptaddr: codepointer ): HResult;
begin
//
end;

function TObject.SafeCallException(exceptobject : tobject; exceptaddr : codepointer) : HResult;
begin
  result := 1;
end;

procedure TObject.DefaultHandler(var message);
begin
    //MessageBoxA(0, PChar('tobject DEFAULT HANDLER'), PChar('info'), 0);
end;
{$endif}
