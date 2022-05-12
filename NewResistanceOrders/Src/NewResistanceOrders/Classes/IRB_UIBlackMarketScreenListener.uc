// This is an Unreal Script

class IRB_UIBlackMarketScreenListener extends UIScreenListener;

event OnInit(UIScreen Screen)
{
    `LOG("ILB: Screen initialized:" @ Screen.Class.Name,, 'UISL');
	if (Screen.Class.Name == 'UIBlackMarket_Buy' || Screen.Class.Name == 'UIBlackMarket')
	{
		class'ILB_BlackMarketState'.static.HandleBlackMarketScreenOpened();
	}
}