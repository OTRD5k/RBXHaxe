extern class Instance
{
	public var Archivable:Bool; 
	public var ClassName(default, null):String;
	public var DataCost(default, null):Int;
	public var Name:String;
	public var Parent:Instance;
	public var RobloxLocked:Bool;

	function new(name:String);
	function ClearAllChildren():Void;
	function Clone():Instance;
	function Destroy():Void;
	function FindFirstAncestor(name:String):Instance;
	function FindFirstAncestorOfClass(className:String):Instance;
	function FindFirstAncestorWhichIsA(className:String):Instance;
	function FindFirstChild(name:String, ?recursive:Bool):Instance;
	function FindFirstChildOfClass(name:String):Instance;
	function FindFirstChildWhichIsA(className:String, ?recursive:Bool):Instance;
	function GetChildren():Map<Int, Instance>;
	function GetDescendants():Map<Int, Instance>;
	function GetFullName():String;
	function GetPropertyChangedSignal(property:String):RBXScriptSignal;
	function IsA(className:String):Bool;
	function IsAncestorOf(descendant:Instance):Bool;
	function IsDescendantOf(ancestor:Instance):Bool;
	function WaitForChild(childName:String, ?timeOut:Float):Instance;

	public var AncestoryChanged:RBXScriptSignal;
	public var Changed:RBXScriptSignal;
	public var ChildAdded:RBXScriptSignal;
	public var ChildRemoved:RBXScriptSignal;
	public var DescendantAdded:RBXScriptSignal;
	public var DescendantRemoving:RBXScriptSignal;
}