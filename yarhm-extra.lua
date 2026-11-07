-- YARHM Extra 1.0 (fork of Yet Another Random Hub Menu 1.22 by Aetherion)
-- GPL-3.0. Upstream: https://github.com/Joystickplays/psychic-octo-invention
-- Build Number: 42
-- Build Date: 2026-10-15T07:08:04Z



if not game:IsLoaded() then
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Script loading",
		Text = "Waiting for the game to finish loading!",
		Duration = 5
	})
	game.Loaded:Wait()
end
-- kill anything a previous execution left behind (stale UI incl. leaked
-- overlays, old BG_TASK loops, anti-AFK connection)
getgenv().YARHM_EXTRA_GEN = (getgenv().YARHM_EXTRA_GEN or 0) + 1
if getgenv().YARHM then
	pcall(function() getgenv().YARHM:Destroy() end)
	getgenv().YARHM = nil
end
if getgenv().YARHM_EXTRA_AFK then
	pcall(function() getgenv().YARHM_EXTRA_AFK:Disconnect() end)
	getgenv().YARHM_EXTRA_AFK = nil
end
-- Instances:

local Converted = {
	["_YARHM"] = Instance.new("ScreenGui");
	["_FUNCTIONS"] = Instance.new("ModuleScript");
	["_Universal"] = Instance.new("LocalScript");
	["_DraggableObject"] = Instance.new("ModuleScript");
	["_ClickAndHold"] = Instance.new("ModuleScript");
	["_Spring"] = Instance.new("ModuleScript");
	["_Init"] = Instance.new("LocalScript");
	["_ESPIndicator"] = Instance.new("ModuleScript");
	["_Bezier"] = Instance.new("ModuleScript");
	["_PointSave"] = Instance.new("ModuleScript");
	["_Theme"] = Instance.new("ModuleScript");
	["_FlyUtility"] = Instance.new("ModuleScript");
	["_MenuButton"] = Instance.new("TextButton");
	["_UIPadding"] = Instance.new("UIPadding");
	["_UICorner"] = Instance.new("UICorner");
	["_UITextSizeConstraint"] = Instance.new("UITextSizeConstraint");
	["_ClickInd"] = Instance.new("Frame");
	["_UICorner1"] = Instance.new("UICorner");
	["_Frame"] = Instance.new("Frame");
	["_UICorner2"] = Instance.new("UICorner");
	["_Open"] = Instance.new("TextButton");
	["_InitOpen"] = Instance.new("LocalScript");
	["_OnClick"] = Instance.new("LocalScript");
	["_Resizer"] = Instance.new("LocalScript");
	["_UICorner3"] = Instance.new("UICorner");
	["_UIPadding1"] = Instance.new("UIPadding");
	["_DropdownFrameSample"] = Instance.new("Frame");
	["_UICorner4"] = Instance.new("UICorner");
	["_UIGradient"] = Instance.new("UIGradient");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UIGradient1"] = Instance.new("UIGradient");
	["_ScrollingFrame"] = Instance.new("ScrollingFrame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_Sample"] = Instance.new("TextButton");
	["_UIPadding2"] = Instance.new("UIPadding");
	["_UICorner5"] = Instance.new("UICorner");
	["_UIPadding3"] = Instance.new("UIPadding");
	["_themedColor"] = Instance.new("StringValue");
	["_ListButton"] = Instance.new("TextButton");
	["_UICorner6"] = Instance.new("UICorner");
	["_Notifications"] = Instance.new("Frame");
	["_UIListLayout1"] = Instance.new("UIListLayout");
	["_UIPadding4"] = Instance.new("UIPadding");
	["_Placeholder"] = Instance.new("Frame");
	["_UICorner7"] = Instance.new("UICorner");
	["_TextLabel"] = Instance.new("TextLabel");
	["_Range"] = Instance.new("Frame");
	["_TextLabel1"] = Instance.new("TextLabel");
	["_UIListLayout2"] = Instance.new("UIListLayout");
	["_UIPadding5"] = Instance.new("UIPadding");
	["_Frame1"] = Instance.new("Frame");
	["_UIPadding6"] = Instance.new("UIPadding");
	["_Track"] = Instance.new("Frame");
	["_UICorner8"] = Instance.new("UICorner");
	["_Ball"] = Instance.new("TextButton");
	["_BallProgress"] = Instance.new("TextLabel");
	["_UIPadding7"] = Instance.new("UIPadding");
	["_themedColor1"] = Instance.new("StringValue");
	["_UICorner9"] = Instance.new("UICorner");
	["_UIPadding8"] = Instance.new("UIPadding");
	["_TrackProgress"] = Instance.new("TextLabel");
	["_themedColor2"] = Instance.new("StringValue");
	["_UISizeConstraint"] = Instance.new("UISizeConstraint");
	["_UICorner10"] = Instance.new("UICorner");
	["_themedColor3"] = Instance.new("StringValue");
	["_FloatingButton"] = Instance.new("TextButton");
	["_Keybinding"] = Instance.new("LocalScript");
	["_Invisible"] = Instance.new("LocalScript");
	["_UIPadding9"] = Instance.new("UIPadding");
	["_UICorner11"] = Instance.new("UICorner");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_Lock"] = Instance.new("TextLabel");
	["_UIScale"] = Instance.new("UIScale");
	["_Ripple"] = Instance.new("Frame");
	["_UICorner12"] = Instance.new("UICorner");
	["_UIScale1"] = Instance.new("UIScale");
	["_Dropdown"] = Instance.new("Frame");
	["_TextLabel2"] = Instance.new("TextLabel");
	["_UIListLayout3"] = Instance.new("UIListLayout");
	["_UIPadding10"] = Instance.new("UIPadding");
	["_Frame2"] = Instance.new("TextButton");
	["_UIPadding11"] = Instance.new("UIPadding");
	["_UICorner13"] = Instance.new("UICorner");
	["_AddCustomModule"] = Instance.new("Frame");
	["_UICorner14"] = Instance.new("UICorner");
	["_UIStroke2"] = Instance.new("UIStroke");
	["_UIGradient2"] = Instance.new("UIGradient");
	["_UIGradient3"] = Instance.new("UIGradient");
	["_UIScale2"] = Instance.new("UIScale");
	["_TextLabel3"] = Instance.new("TextLabel");
	["_TextBox"] = Instance.new("TextBox");
	["_UICorner15"] = Instance.new("UICorner");
	["_UIPadding12"] = Instance.new("UIPadding");
	["_TextLabel4"] = Instance.new("TextLabel");
	["_Add"] = Instance.new("TextButton");
	["_LocalScript"] = Instance.new("LocalScript");
	["_UICorner16"] = Instance.new("UICorner");
	["_UIPadding13"] = Instance.new("UIPadding");
	["_UIStroke3"] = Instance.new("UIStroke");
	["_Cancel"] = Instance.new("TextButton");
	["_LocalScript1"] = Instance.new("LocalScript");
	["_UICorner17"] = Instance.new("UICorner");
	["_UIPadding14"] = Instance.new("UIPadding");
	["_UIStroke4"] = Instance.new("UIStroke");
	["_themedColor4"] = Instance.new("StringValue");
	["_Menu"] = Instance.new("Frame");
	["_UICorner18"] = Instance.new("UICorner");
	["_UIStroke5"] = Instance.new("UIStroke");
	["_UIGradient4"] = Instance.new("UIGradient");
	["_Animator"] = Instance.new("LocalScript");
	["_HubCredits"] = Instance.new("TextLabel");
	["_HubDesc"] = Instance.new("TextLabel");
	["_HubName"] = Instance.new("TextLabel");
	["_CanvasGroup"] = Instance.new("CanvasGroup");
	["_UICorner19"] = Instance.new("UICorner");
	["_ImageLabel"] = Instance.new("ImageLabel");
	["_Opener"] = Instance.new("TextButton");
	["_TextLabel5"] = Instance.new("TextLabel");
	["_CloseArea"] = Instance.new("TextButton");
	["_CloseOpen"] = Instance.new("LocalScript");
	["_Frame3"] = Instance.new("Frame");
	["_UICorner20"] = Instance.new("UICorner");
	["_themedColor5"] = Instance.new("StringValue");
	["_TextLabel6"] = Instance.new("TextLabel");
	["_UICorner21"] = Instance.new("UICorner");
	["_AllowForSpring"] = Instance.new("BindableEvent");
	["_themedColor6"] = Instance.new("StringValue");
	["_UIGradient5"] = Instance.new("UIGradient");
	["_Area"] = Instance.new("CanvasGroup");
	["_Area1"] = Instance.new("ScrollingFrame");
	["_TextLabel7"] = Instance.new("TextLabel");
	["_TextLabel8"] = Instance.new("TextLabel");
	["_UICorner22"] = Instance.new("UICorner");
	["_List"] = Instance.new("CanvasGroup");
	["_AutoSetup"] = Instance.new("LocalScript");
	["_UICorner23"] = Instance.new("UICorner");
	["_ScrollingFrame1"] = Instance.new("ScrollingFrame");
	["_UIListLayout4"] = Instance.new("UIListLayout");
	["_UIPadding15"] = Instance.new("UIPadding");
	["_UIPadding16"] = Instance.new("UIPadding");
	["_UIStroke6"] = Instance.new("UIStroke");
	["_UIGradient6"] = Instance.new("UIGradient");
	["_AddCustomModule1"] = Instance.new("TextButton");
	["_LocalScript2"] = Instance.new("LocalScript");
	["_UICorner24"] = Instance.new("UICorner");
	["_UIPadding17"] = Instance.new("UIPadding");
	["_UIStroke7"] = Instance.new("UIStroke");
	["_themedColor7"] = Instance.new("StringValue");
	["_themedColor8"] = Instance.new("StringValue");
	["_themedColor9"] = Instance.new("StringValue");
	["_UIScale3"] = Instance.new("UIScale");
	["_Stub"] = Instance.new("Frame");
	["_themedColor10"] = Instance.new("StringValue");
	["_Stub1"] = Instance.new("Frame");
	["_themedColor11"] = Instance.new("StringValue");
	["_PHContainer"] = Instance.new("Frame");
	["_PHContainerInner"] = Instance.new("CanvasGroup");
	["_Rotator"] = Instance.new("Frame");
	["_PHIdle"] = Instance.new("LocalScript");
	["_PH"] = Instance.new("ImageLabel");
	["_Tap"] = Instance.new("TextButton");
	["_TextLabel9"] = Instance.new("TextLabel");
	["_UICorner25"] = Instance.new("UICorner");
	["_Ad"] = Instance.new("CanvasGroup");
	["_UICorner26"] = Instance.new("UICorner");
	["_Image"] = Instance.new("ImageLabel");
	["_Metadata"] = Instance.new("Frame");
	["_UIGradient7"] = Instance.new("UIGradient");
	["_TextLabel10"] = Instance.new("TextLabel");
	["_UIPadding18"] = Instance.new("UIPadding");
	["_CTA"] = Instance.new("TextButton");
	["_UICorner27"] = Instance.new("UICorner");
	["_UIPadding19"] = Instance.new("UIPadding");
	["_Sponsoered"] = Instance.new("TextLabel");
	["_Toggle"] = Instance.new("Frame");
	["_TextLabel11"] = Instance.new("TextLabel");
	["_UIListLayout5"] = Instance.new("UIListLayout");
	["_Frame4"] = Instance.new("Frame");
	["_Frame5"] = Instance.new("Frame");
	["_UICorner28"] = Instance.new("UICorner");
	["_Toggler"] = Instance.new("TextButton");
	["_UICorner29"] = Instance.new("UICorner");
	["_ImageLabel1"] = Instance.new("ImageLabel");
	["_UIPadding20"] = Instance.new("UIPadding");
	["_UICorner30"] = Instance.new("UICorner");
	["_themedColor12"] = Instance.new("StringValue");
	["_UIPadding21"] = Instance.new("UIPadding");
	["_Modules"] = Instance.new("Folder");
	["_NotificationSample"] = Instance.new("Frame");
	["_UICorner31"] = Instance.new("UICorner");
	["_UIStroke8"] = Instance.new("UIStroke");
	["_UIGradient8"] = Instance.new("UIGradient");
	["_ImageLabel2"] = Instance.new("ImageLabel");
	["_TextLabel12"] = Instance.new("TextLabel");
	["_UITextSizeConstraint1"] = Instance.new("UITextSizeConstraint");
	["_Close"] = Instance.new("ImageButton");
	["_UICorner32"] = Instance.new("UICorner");
	["_UIStroke9"] = Instance.new("UIStroke");
	["_UIScale4"] = Instance.new("UIScale");
	["_themedColor13"] = Instance.new("StringValue");
	["_Dialog"] = Instance.new("Frame");
	["_UICorner33"] = Instance.new("UICorner");
	["_UIGradient9"] = Instance.new("UIGradient");
	["_UIPadding22"] = Instance.new("UIPadding");
	["_UIStroke10"] = Instance.new("UIStroke");
	["_UIGradient10"] = Instance.new("UIGradient");
	["_DialogTitle"] = Instance.new("TextLabel");
	["_UIListLayout6"] = Instance.new("UIListLayout");
	["_DialogDesc"] = Instance.new("TextLabel");
	["_UITextSizeConstraint2"] = Instance.new("UITextSizeConstraint");
	["_Options"] = Instance.new("Frame");
	["_UIListLayout7"] = Instance.new("UIListLayout");
	["_OptionPlaceholder"] = Instance.new("TextButton");
	["_UIPadding23"] = Instance.new("UIPadding");
	["_UICorner34"] = Instance.new("UICorner");
	["_UIStroke11"] = Instance.new("UIStroke");
	["_UIGradient11"] = Instance.new("UIGradient");
	["_themedColor14"] = Instance.new("StringValue");
	["_OnSelect"] = Instance.new("BindableEvent");
	["_UIScale5"] = Instance.new("UIScale");
	["_themedColor15"] = Instance.new("StringValue");
	["_FloatingButtonSetting"] = Instance.new("Frame");
	["_ControlBarContainer"] = Instance.new("Frame");
	["_ControlBar"] = Instance.new("Frame");
	["_UIListLayout8"] = Instance.new("UIListLayout");
	["_Visibility"] = Instance.new("TextButton");
	["_LocalScript3"] = Instance.new("LocalScript");
	["_UICorner35"] = Instance.new("UICorner");
	["_UIPadding24"] = Instance.new("UIPadding");
	["_Event"] = Instance.new("BindableEvent");
	["_themedColor16"] = Instance.new("StringValue");
	["_Lock1"] = Instance.new("TextButton");
	["_LocalScript4"] = Instance.new("LocalScript");
	["_UICorner36"] = Instance.new("UICorner");
	["_UIPadding25"] = Instance.new("UIPadding");
	["_Event1"] = Instance.new("BindableEvent");
	["_themedColor17"] = Instance.new("StringValue");
	["_Exit"] = Instance.new("TextButton");
	["_LocalScript5"] = Instance.new("LocalScript");
	["_UICorner37"] = Instance.new("UICorner");
	["_UIPadding26"] = Instance.new("UIPadding");
	["_UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint");
	["_themedColor18"] = Instance.new("StringValue");
	["_UIListLayout9"] = Instance.new("UIListLayout");
	["_Tip"] = Instance.new("TextLabel");
	["_UIStroke12"] = Instance.new("UIStroke");
	["_UIScale6"] = Instance.new("UIScale");
	["_FloatingButtons"] = Instance.new("Frame");
	["_FloatingButtons1"] = Instance.new("Frame");
	["_TextBoxPlaceholder"] = Instance.new("Frame");
	["_UIListLayout10"] = Instance.new("UIListLayout");
	["_TextButton"] = Instance.new("TextButton");
	["_UICorner38"] = Instance.new("UICorner");
	["_UIPadding27"] = Instance.new("UIPadding");
	["_UITextSizeConstraint3"] = Instance.new("UITextSizeConstraint");
	["_TextBox1"] = Instance.new("TextBox");
	["_UICorner39"] = Instance.new("UICorner");
}

-- Properties:

Converted["_YARHM"].DisplayOrder = 3
Converted["_YARHM"].IgnoreGuiInset = true
Converted["_YARHM"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
Converted["_YARHM"].ResetOnSpawn = false
Converted["_YARHM"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_YARHM"].Name = "YARHM Extra"
Converted["_YARHM"].Parent = game:GetService("CoreGui")

Converted["_MenuButton"].Font = Enum.Font.GothamBold
Converted["_MenuButton"].Text = "a"
Converted["_MenuButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_MenuButton"].TextScaled = true
Converted["_MenuButton"].TextWrapped = true
Converted["_MenuButton"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_MenuButton"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_MenuButton"].Size = UDim2.new(1, 0, 0, 35)
Converted["_MenuButton"].Visible = false
Converted["_MenuButton"].Name = "MenuButton"
Converted["_MenuButton"].Parent = Converted["_YARHM"]

Converted["_UIPadding"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding"].PaddingLeft = UDim.new(0, 16)
Converted["_UIPadding"].PaddingRight = UDim.new(0, 16)
Converted["_UIPadding"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding"].Parent = Converted["_MenuButton"]

Converted["_UICorner"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner"].Parent = Converted["_MenuButton"]

Converted["_UITextSizeConstraint"].MaxTextSize = 16
Converted["_UITextSizeConstraint"].Parent = Converted["_MenuButton"]

Converted["_ClickInd"].AnchorPoint = Vector2.new(1, 0.5)
Converted["_ClickInd"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ClickInd"].BackgroundTransparency = 0.5
Converted["_ClickInd"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ClickInd"].BorderSizePixel = 0
Converted["_ClickInd"].Position = UDim2.new(1, 0, 0.5, 0)
Converted["_ClickInd"].Size = UDim2.new(0, 21, 0, 21)
Converted["_ClickInd"].Name = "ClickInd"
Converted["_ClickInd"].Parent = Converted["_MenuButton"]

Converted["_UICorner1"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner1"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner1"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner1"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner1"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner1"].Parent = Converted["_ClickInd"]

Converted["_Frame"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_Frame"].Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
Converted["_Frame"].Parent = Converted["_ClickInd"]

Converted["_UICorner2"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner2"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner2"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner2"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner2"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner2"].Parent = Converted["_Frame"]

Converted["_Open"].Font = Enum.Font.Gotham
Converted["_Open"].Text = "Triple-click this region to open YARHM Extra."
Converted["_Open"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Open"].TextScaled = true
Converted["_Open"].TextSize = 14
Converted["_Open"].TextTransparency = 1
Converted["_Open"].TextWrapped = true
Converted["_Open"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Open"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Open"].BackgroundTransparency = 1
Converted["_Open"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Open"].BorderSizePixel = 0
Converted["_Open"].Position = UDim2.new(0.499372631, 0, 0.06341701, 0)
Converted["_Open"].Selectable = false
Converted["_Open"].Size = UDim2.new(0, 493, 0, 50)
Converted["_Open"].Visible = false
Converted["_Open"].Name = "Open"
Converted["_Open"].Parent = Converted["_YARHM"]

Converted["_UICorner3"].Parent = Converted["_Open"]

Converted["_UIPadding1"].PaddingBottom = UDim.new(0, 10)
Converted["_UIPadding1"].PaddingLeft = UDim.new(0, 20)
Converted["_UIPadding1"].PaddingRight = UDim.new(0, 20)
Converted["_UIPadding1"].PaddingTop = UDim.new(0, 10)
Converted["_UIPadding1"].Parent = Converted["_Open"]

Converted["_DropdownFrameSample"].AnchorPoint = Vector2.new(0.5, 0)
Converted["_DropdownFrameSample"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DropdownFrameSample"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownFrameSample"].BorderSizePixel = 0
Converted["_DropdownFrameSample"].Size = UDim2.new(0, 108, 0, 239)
Converted["_DropdownFrameSample"].Visible = false
Converted["_DropdownFrameSample"].Name = "DropdownFrameSample"
Converted["_DropdownFrameSample"].Parent = Converted["_YARHM"]

Converted["_UICorner4"].Parent = Converted["_DropdownFrameSample"]

Converted["_UIGradient"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(68.00000354647636, 68.00000354647636, 68.00000354647636))
}
Converted["_UIGradient"].Rotation = 68
Converted["_UIGradient"].Parent = Converted["_DropdownFrameSample"]

Converted["_UIStroke"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke"].Thickness = 2
Converted["_UIStroke"].Parent = Converted["_DropdownFrameSample"]

Converted["_UIGradient1"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(111.00000098347664, 111.00000098347664, 111.00000098347664)),
	ColorSequenceKeypoint.new(0.6401384472846985, Color3.fromRGB(114.23875719308853, 114.23875719308853, 114.23875719308853)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
Converted["_UIGradient1"].Rotation = -107
Converted["_UIGradient1"].Parent = Converted["_UIStroke"]

Converted["_ScrollingFrame"].AutomaticCanvasSize = Enum.AutomaticSize.XY
Converted["_ScrollingFrame"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_ScrollingFrame"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScrollingFrame"].ScrollBarThickness = 0
Converted["_ScrollingFrame"].Active = true
Converted["_ScrollingFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ScrollingFrame"].BackgroundTransparency = 1
Converted["_ScrollingFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScrollingFrame"].BorderSizePixel = 0
Converted["_ScrollingFrame"].Size = UDim2.new(1, 0, 1, 0)
Converted["_ScrollingFrame"].Parent = Converted["_DropdownFrameSample"]

Converted["_UIListLayout"].Padding = UDim.new(0, 5)
Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout"].Parent = Converted["_ScrollingFrame"]

Converted["_Sample"].Font = Enum.Font.Unknown
Converted["_Sample"].Text = "This can fit a lot of text, probably."
Converted["_Sample"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Sample"].TextScaled = true
Converted["_Sample"].TextSize = 14
Converted["_Sample"].TextWrapped = true
Converted["_Sample"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_Sample"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Sample"].BorderSizePixel = 0
Converted["_Sample"].Size = UDim2.new(1, 0, 0, 35)
Converted["_Sample"].Visible = false
Converted["_Sample"].Name = "Sample"
Converted["_Sample"].Parent = Converted["_ScrollingFrame"]

Converted["_UIPadding2"].PaddingBottom = UDim.new(0, 7)
Converted["_UIPadding2"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding2"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding2"].PaddingTop = UDim.new(0, 7)
Converted["_UIPadding2"].Parent = Converted["_Sample"]

Converted["_UICorner5"].Parent = Converted["_Sample"]

Converted["_UIPadding3"].PaddingBottom = UDim.new(0, 7)
Converted["_UIPadding3"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding3"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding3"].PaddingTop = UDim.new(0, 7)
Converted["_UIPadding3"].Parent = Converted["_DropdownFrameSample"]

Converted["_themedColor"].Value = "backgroundColorCSQ"
Converted["_themedColor"].Name = "themedColor"
Converted["_themedColor"].Parent = Converted["_DropdownFrameSample"]

Converted["_ListButton"].Font = Enum.Font.Gotham
Converted["_ListButton"].Text = "Placeholder"
Converted["_ListButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ListButton"].TextSize = 14
Converted["_ListButton"].TextWrapped = true
Converted["_ListButton"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ListButton"].BackgroundColor3 = Color3.fromRGB(49.00000087916851, 49.00000087916851, 49.00000087916851)
Converted["_ListButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ListButton"].BorderSizePixel = 0
Converted["_ListButton"].Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
Converted["_ListButton"].Size = UDim2.new(1, 0, 0, 50)
Converted["_ListButton"].Visible = false
Converted["_ListButton"].Name = "ListButton"
Converted["_ListButton"].Parent = Converted["_YARHM"]

Converted["_UICorner6"].Parent = Converted["_ListButton"]

Converted["_Notifications"].AnchorPoint = Vector2.new(1, 0.5)
Converted["_Notifications"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Notifications"].BackgroundTransparency = 1
Converted["_Notifications"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Notifications"].BorderSizePixel = 0
Converted["_Notifications"].Position = UDim2.new(0.99000001, 0, 0.5, 0)
Converted["_Notifications"].Size = UDim2.new(0, 242, 1, 0)
Converted["_Notifications"].Name = "Notifications"
Converted["_Notifications"].Parent = Converted["_YARHM"]

Converted["_UIListLayout1"].Padding = UDim.new(0, 10)
Converted["_UIListLayout1"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout1"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout1"].VerticalAlignment = Enum.VerticalAlignment.Bottom
Converted["_UIListLayout1"].Parent = Converted["_Notifications"]

Converted["_UIPadding4"].PaddingBottom = UDim.new(0, 10)
Converted["_UIPadding4"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding4"].Parent = Converted["_Notifications"]

Converted["_Placeholder"].AnchorPoint = Vector2.new(0.5, 0)
Converted["_Placeholder"].BackgroundColor3 = Color3.fromRGB(31.000001952052116, 31.000001952052116, 31.000001952052116)
Converted["_Placeholder"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Placeholder"].BorderSizePixel = 0
Converted["_Placeholder"].Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
Converted["_Placeholder"].Visible = false
Converted["_Placeholder"].Name = "Placeholder"
Converted["_Placeholder"].Parent = Converted["_Notifications"]

Converted["_UICorner7"].Parent = Converted["_Placeholder"]

Converted["_TextLabel"].Font = Enum.Font.Gotham
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].TextScaled = true
Converted["_TextLabel"].TextSize = 14
Converted["_TextLabel"].TextWrapped = true
Converted["_TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_TextLabel"].Size = UDim2.new(0.899999976, 0, 0.800000012, 0)
Converted["_TextLabel"].Parent = Converted["_Placeholder"]

Converted["_Range"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_Range"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Range"].BorderSizePixel = 0
Converted["_Range"].Size = UDim2.new(1, 0, 0, 45)
Converted["_Range"].Visible = false
Converted["_Range"].Name = "Range"
Converted["_Range"].Parent = Converted["_YARHM"]

Converted["_TextLabel1"].Font = Enum.Font.Unknown
Converted["_TextLabel1"].Text = "something something idk lol"
Converted["_TextLabel1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].TextScaled = true
Converted["_TextLabel1"].TextSize = 58
Converted["_TextLabel1"].TextWrapped = true
Converted["_TextLabel1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].BackgroundTransparency = 1
Converted["_TextLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel1"].BorderSizePixel = 0
Converted["_TextLabel1"].Position = UDim2.new(-0.0633024424, 0, 0.685714304, 0)
Converted["_TextLabel1"].Size = UDim2.new(0, 125, 0, 25)
Converted["_TextLabel1"].Parent = Converted["_Range"]

Converted["_UIListLayout2"].HorizontalFlex = Enum.UIFlexAlignment.Fill
Converted["_UIListLayout2"].Padding = UDim.new(0, 15)
Converted["_UIListLayout2"].VerticalFlex = Enum.UIFlexAlignment.SpaceAround
Converted["_UIListLayout2"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout2"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout2"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout2"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout2"].Parent = Converted["_Range"]

Converted["_UIPadding5"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding5"].PaddingLeft = UDim.new(0, 16)
Converted["_UIPadding5"].PaddingRight = UDim.new(0, 8)
Converted["_UIPadding5"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding5"].Parent = Converted["_Range"]

Converted["_Frame1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame1"].BackgroundTransparency = 1
Converted["_Frame1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame1"].BorderSizePixel = 0
Converted["_Frame1"].Size = UDim2.new(0.400000006, 0, 1, 0)
Converted["_Frame1"].Parent = Converted["_Range"]

Converted["_UIPadding6"].PaddingBottom = UDim.new(0, 7)
Converted["_UIPadding6"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding6"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding6"].PaddingTop = UDim.new(0, 7)
Converted["_UIPadding6"].Parent = Converted["_Frame1"]

Converted["_Track"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Track"].BackgroundColor3 = Color3.fromRGB(12.000000234693289, 12.000000234693289, 12.000000234693289)
Converted["_Track"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Track"].BorderSizePixel = 0
Converted["_Track"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_Track"].Size = UDim2.new(1, 0, 1.20000005, 0)
Converted["_Track"].Name = "Track"
Converted["_Track"].Parent = Converted["_Frame1"]

Converted["_UICorner8"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner8"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner8"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner8"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner8"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner8"].Parent = Converted["_Track"]

Converted["_Ball"].Font = Enum.Font.SourceSans
Converted["_Ball"].Text = ""
Converted["_Ball"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Ball"].TextSize = 14
Converted["_Ball"].AnchorPoint = Vector2.new(0, 0.5)
Converted["_Ball"].BackgroundColor3 = Color3.fromRGB(197.0000034570694, 0, 0)
Converted["_Ball"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Ball"].BorderSizePixel = 0
Converted["_Ball"].Interactable = false
Converted["_Ball"].Position = UDim2.new(1.32920917e-07, 0, 0.5, 0)
Converted["_Ball"].Size = UDim2.new(0.0599999987, 0, 1, 0)
Converted["_Ball"].Name = "Ball"
Converted["_Ball"].Parent = Converted["_Track"]

Converted["_BallProgress"].Font = Enum.Font.GothamBold
Converted["_BallProgress"].Text = "0"
Converted["_BallProgress"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BallProgress"].TextScaled = true
Converted["_BallProgress"].TextSize = 14
Converted["_BallProgress"].TextTransparency = 1
Converted["_BallProgress"].TextWrapped = true
Converted["_BallProgress"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BallProgress"].BackgroundTransparency = 1
Converted["_BallProgress"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BallProgress"].BorderSizePixel = 0
Converted["_BallProgress"].Size = UDim2.new(1, 0, 1, 0)
Converted["_BallProgress"].Name = "BallProgress"
Converted["_BallProgress"].Parent = Converted["_Ball"]

Converted["_UIPadding7"].PaddingBottom = UDim.new(0, 2)
Converted["_UIPadding7"].PaddingTop = UDim.new(0, 1)
Converted["_UIPadding7"].Parent = Converted["_Ball"]

Converted["_themedColor1"].Value = "accentColor"
Converted["_themedColor1"].Name = "themedColor"
Converted["_themedColor1"].Parent = Converted["_Ball"]

Converted["_UICorner9"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner9"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner9"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner9"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner9"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner9"].Parent = Converted["_Ball"]

Converted["_UIPadding8"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding8"].PaddingLeft = UDim.new(0, 6)
Converted["_UIPadding8"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding8"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding8"].Parent = Converted["_Track"]

Converted["_TrackProgress"].Font = Enum.Font.GothamBold
Converted["_TrackProgress"].Text = "0"
Converted["_TrackProgress"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TrackProgress"].TextScaled = true
Converted["_TrackProgress"].TextSize = 14
Converted["_TrackProgress"].TextTransparency = 1
Converted["_TrackProgress"].TextWrapped = true
Converted["_TrackProgress"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_TrackProgress"].AnchorPoint = Vector2.new(1, 0.5)
Converted["_TrackProgress"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TrackProgress"].BackgroundTransparency = 1
Converted["_TrackProgress"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TrackProgress"].BorderSizePixel = 0
Converted["_TrackProgress"].Position = UDim2.new(1, 0, 0.5, 0)
Converted["_TrackProgress"].Size = UDim2.new(0, 35, 1, 0)
Converted["_TrackProgress"].Name = "TrackProgress"
Converted["_TrackProgress"].Parent = Converted["_Track"]

Converted["_themedColor2"].Value = "secondaryColor"
Converted["_themedColor2"].Name = "themedColor"
Converted["_themedColor2"].Parent = Converted["_Track"]

Converted["_UISizeConstraint"].Parent = Converted["_Frame1"]

Converted["_UICorner10"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner10"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner10"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner10"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner10"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner10"].Parent = Converted["_Range"]

Converted["_themedColor3"].Value = "primaryColor"
Converted["_themedColor3"].Name = "themedColor"
Converted["_themedColor3"].Parent = Converted["_Range"]

Converted["_FloatingButton"].Font = Enum.Font.Unknown
Converted["_FloatingButton"].Text = "Shoot into murderer"
Converted["_FloatingButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_FloatingButton"].TextScaled = true
Converted["_FloatingButton"].TextSize = 14
Converted["_FloatingButton"].TextWrapped = true
Converted["_FloatingButton"].AutoButtonColor = false
Converted["_FloatingButton"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_FloatingButton"].BackgroundColor3 = Color3.fromRGB(31.000000052154064, 31.000000052154064, 31.000000052154064)
Converted["_FloatingButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FloatingButton"].BorderSizePixel = 0
Converted["_FloatingButton"].ClipsDescendants = true
Converted["_FloatingButton"].Position = UDim2.new(0, 125, 0, 40)
Converted["_FloatingButton"].Size = UDim2.new(0, 50, 0, 100)
Converted["_FloatingButton"].Visible = false
Converted["_FloatingButton"].Name = "FloatingButton"
Converted["_FloatingButton"].Parent = Converted["_YARHM"]

Converted["_UIPadding9"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding9"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding9"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding9"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding9"].Parent = Converted["_FloatingButton"]

Converted["_UICorner11"].Parent = Converted["_FloatingButton"]

Converted["_UIStroke1"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke1"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke1"].Parent = Converted["_FloatingButton"]

Converted["_Lock"].Font = Enum.Font.Gotham
Converted["_Lock"].Text = "🔒"
Converted["_Lock"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Lock"].TextScaled = true
Converted["_Lock"].TextSize = 14
Converted["_Lock"].TextWrapped = true
Converted["_Lock"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Lock"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Lock"].BackgroundTransparency = 1
Converted["_Lock"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Lock"].BorderSizePixel = 0
Converted["_Lock"].Position = UDim2.new(1, -10, 1, -10)
Converted["_Lock"].Size = UDim2.new(0, 20, 0, 20)
Converted["_Lock"].ZIndex = 999999999
Converted["_Lock"].Name = "Lock"
Converted["_Lock"].Parent = Converted["_FloatingButton"]

Converted["_UIScale"].Scale = 1.0000000116860974e-07
Converted["_UIScale"].Parent = Converted["_Lock"]

Converted["_Ripple"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Ripple"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Ripple"].BackgroundTransparency = 1
Converted["_Ripple"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Ripple"].BorderSizePixel = 0
Converted["_Ripple"].Size = UDim2.new(0, 100, 0, 100)
Converted["_Ripple"].Name = "Ripple"
Converted["_Ripple"].Parent = Converted["_FloatingButton"]

Converted["_UICorner12"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner12"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner12"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner12"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner12"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner12"].Parent = Converted["_Ripple"]

Converted["_UIScale1"].Parent = Converted["_FloatingButton"]

Converted["_Dropdown"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Dropdown"].BackgroundTransparency = 1
Converted["_Dropdown"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown"].BorderSizePixel = 0
Converted["_Dropdown"].Size = UDim2.new(1, 0, 0, 35)
Converted["_Dropdown"].Visible = false
Converted["_Dropdown"].Name = "Dropdown"
Converted["_Dropdown"].Parent = Converted["_YARHM"]

Converted["_TextLabel2"].Font = Enum.Font.Unknown
Converted["_TextLabel2"].Text = "Loop walkspeed and FOV"
Converted["_TextLabel2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel2"].TextScaled = true
Converted["_TextLabel2"].TextSize = 14
Converted["_TextLabel2"].TextWrapped = true
Converted["_TextLabel2"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel2"].BackgroundTransparency = 1
Converted["_TextLabel2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel2"].BorderSizePixel = 0
Converted["_TextLabel2"].Size = UDim2.new(0.699999988, 0, 1, 0)
Converted["_TextLabel2"].Parent = Converted["_Dropdown"]

Converted["_UIListLayout3"].Padding = UDim.new(0, 15)
Converted["_UIListLayout3"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout3"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout3"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout3"].Parent = Converted["_Dropdown"]

Converted["_UIPadding10"].PaddingLeft = UDim.new(0.0700000003, 0)
Converted["_UIPadding10"].PaddingRight = UDim.new(0.0700000003, 0)
Converted["_UIPadding10"].Parent = Converted["_Dropdown"]

Converted["_Frame2"].Font = Enum.Font.Gotham
Converted["_Frame2"].Text = "Select..."
Converted["_Frame2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame2"].TextScaled = true
Converted["_Frame2"].TextWrapped = true
Converted["_Frame2"].Active = false
Converted["_Frame2"].BackgroundColor3 = Color3.fromRGB(31.000001952052116, 31.000001952052116, 31.000001952052116)
Converted["_Frame2"].BackgroundTransparency = -0.03999999910593033
Converted["_Frame2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame2"].BorderSizePixel = 0
Converted["_Frame2"].Selectable = false
Converted["_Frame2"].Size = UDim2.new(0.400000006, 0, 1, 0)
Converted["_Frame2"].Name = "Frame"
Converted["_Frame2"].Parent = Converted["_Dropdown"]

Converted["_UIPadding11"].PaddingBottom = UDim.new(0, 7)
Converted["_UIPadding11"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding11"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding11"].PaddingTop = UDim.new(0, 7)
Converted["_UIPadding11"].Parent = Converted["_Frame2"]

Converted["_UICorner13"].Parent = Converted["_Frame2"]

Converted["_AddCustomModule"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_AddCustomModule"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_AddCustomModule"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_AddCustomModule"].BorderSizePixel = 0
Converted["_AddCustomModule"].ClipsDescendants = true
Converted["_AddCustomModule"].Position = UDim2.new(0.5, 0, -0.5, 0)
Converted["_AddCustomModule"].Size = UDim2.new(0, 440, 0, 268)
Converted["_AddCustomModule"].ZIndex = 3
Converted["_AddCustomModule"].Name = "AddCustomModule"
Converted["_AddCustomModule"].Parent = Converted["_YARHM"]

Converted["_UICorner14"].Parent = Converted["_AddCustomModule"]

Converted["_UIStroke2"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke2"].Thickness = 2
Converted["_UIStroke2"].Parent = Converted["_AddCustomModule"]

Converted["_UIGradient2"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)),
	ColorSequenceKeypoint.new(0.15224914252758026, Color3.fromRGB(50.69031357765198, 50.69031357765198, 50.69031357765198)),
	ColorSequenceKeypoint.new(0.4723183512687683, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(0.7577854990959167, Color3.fromRGB(50.13314567506313, 50.13314567506313, 50.13314567506313)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(48.000000938773155, 48.000000938773155, 48.000000938773155))
}
Converted["_UIGradient2"].Rotation = 62
Converted["_UIGradient2"].Parent = Converted["_UIStroke2"]

Converted["_UIGradient3"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(68.00000354647636, 68.00000354647636, 68.00000354647636))
}
Converted["_UIGradient3"].Rotation = 68
Converted["_UIGradient3"].Parent = Converted["_AddCustomModule"]

Converted["_UIScale2"].Parent = Converted["_AddCustomModule"]

Converted["_TextLabel3"].Font = Enum.Font.Gotham
Converted["_TextLabel3"].Text = "Add a module"
Converted["_TextLabel3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel3"].TextScaled = true
Converted["_TextLabel3"].TextSize = 14
Converted["_TextLabel3"].TextWrapped = true
Converted["_TextLabel3"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel3"].BackgroundTransparency = 1
Converted["_TextLabel3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel3"].BorderSizePixel = 0
Converted["_TextLabel3"].Position = UDim2.new(0.352256238, 0, 0.133915231, 0)
Converted["_TextLabel3"].Size = UDim2.new(0.619047642, 0, 0.125920027, 0)
Converted["_TextLabel3"].Parent = Converted["_AddCustomModule"]

Converted["_TextBox"].ClearTextOnFocus = false
Converted["_TextBox"].Font = Enum.Font.Gotham
Converted["_TextBox"].PlaceholderColor3 = Color3.fromRGB(178.49999696016312, 178.49999696016312, 178.49999696016312)
Converted["_TextBox"].PlaceholderText = "Custom module link"
Converted["_TextBox"].Text = ""
Converted["_TextBox"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox"].TextScaled = true
Converted["_TextBox"].TextSize = 14
Converted["_TextBox"].TextWrapped = true
Converted["_TextBox"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextBox"].BorderSizePixel = 0
Converted["_TextBox"].Position = UDim2.new(0.499648541, 0, 0.500059664, 0)
Converted["_TextBox"].Size = UDim2.new(0.804988742, 0, 0.544776142, 0)
Converted["_TextBox"].Parent = Converted["_AddCustomModule"]

Converted["_UICorner15"].Parent = Converted["_TextBox"]

Converted["_UIPadding12"].PaddingBottom = UDim.new(0, 10)
Converted["_UIPadding12"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding12"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding12"].PaddingTop = UDim.new(0, 10)
Converted["_UIPadding12"].Parent = Converted["_TextBox"]

Converted["_TextLabel4"].Font = Enum.Font.GothamBold
Converted["_TextLabel4"].Text = "ONLY ADD MODULES YOU TRUST!"
Converted["_TextLabel4"].TextColor3 = Color3.fromRGB(255, 0, 0)
Converted["_TextLabel4"].TextScaled = true
Converted["_TextLabel4"].TextSize = 14
Converted["_TextLabel4"].TextWrapped = true
Converted["_TextLabel4"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel4"].BackgroundTransparency = 1
Converted["_TextLabel4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel4"].BorderSizePixel = 0
Converted["_TextLabel4"].Position = UDim2.new(0.499648541, 0, 0.833542168, 0)
Converted["_TextLabel4"].Size = UDim2.new(0.619047642, 0, 0.0550245307, 0)
Converted["_TextLabel4"].Parent = Converted["_AddCustomModule"]

Converted["_Add"].Font = Enum.Font.Gotham
Converted["_Add"].Text = "Add"
Converted["_Add"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Add"].TextScaled = true
Converted["_Add"].TextSize = 14
Converted["_Add"].TextWrapped = true
Converted["_Add"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Add"].BackgroundColor3 = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
Converted["_Add"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Add"].BorderSizePixel = 0
Converted["_Add"].Position = UDim2.new(0.108492024, 0, 0.927298486, 0)
Converted["_Add"].Size = UDim2.new(0.163265288, 0, 0.0858208984, 0)
Converted["_Add"].Name = "Add"
Converted["_Add"].Parent = Converted["_AddCustomModule"]

Converted["_UICorner16"].Parent = Converted["_Add"]

Converted["_UIPadding13"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding13"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding13"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding13"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding13"].Parent = Converted["_Add"]

Converted["_UIStroke3"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke3"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke3"].Parent = Converted["_Add"]

Converted["_Cancel"].Font = Enum.Font.Gotham
Converted["_Cancel"].Text = "Cancel"
Converted["_Cancel"].TextColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Cancel"].TextScaled = true
Converted["_Cancel"].TextSize = 14
Converted["_Cancel"].TextWrapped = true
Converted["_Cancel"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Cancel"].BackgroundColor3 = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
Converted["_Cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Cancel"].BorderSizePixel = 0
Converted["_Cancel"].Position = UDim2.new(0.899875283, 0, 0.931029797, 0)
Converted["_Cancel"].Size = UDim2.new(0.163265288, 0, 0.0858208984, 0)
Converted["_Cancel"].Name = "Cancel"
Converted["_Cancel"].Parent = Converted["_AddCustomModule"]

Converted["_UICorner17"].Parent = Converted["_Cancel"]

Converted["_UIPadding14"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding14"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding14"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding14"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding14"].Parent = Converted["_Cancel"]

Converted["_UIStroke4"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke4"].Color = Color3.fromRGB(255, 0, 0)
Converted["_UIStroke4"].Parent = Converted["_Cancel"]

Converted["_themedColor4"].Value = "backgroundColorCSQ"
Converted["_themedColor4"].Name = "themedColor"
Converted["_themedColor4"].Parent = Converted["_AddCustomModule"]

Converted["_Menu"].AnchorPoint = Vector2.new(0.5, 0)
Converted["_Menu"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Menu"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Menu"].BorderSizePixel = 0
Converted["_Menu"].Position = UDim2.new(0.5, 0, 0.0500000007, 0)
Converted["_Menu"].Size = UDim2.new(0, 441, 0, 268)
Converted["_Menu"].Name = "Menu"
Converted["_Menu"].Parent = Converted["_YARHM"]

Converted["_UICorner18"].BottomLeftRadius = UDim.new(0, 16)
Converted["_UICorner18"].BottomRightRadius = UDim.new(0, 16)
Converted["_UICorner18"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner18"].TopLeftRadius = UDim.new(0, 16)
Converted["_UICorner18"].TopRightRadius = UDim.new(0, 16)
Converted["_UICorner18"].Parent = Converted["_Menu"]

Converted["_UIStroke5"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke5"].Thickness = 2
Converted["_UIStroke5"].Parent = Converted["_Menu"]

Converted["_UIGradient4"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)),
	ColorSequenceKeypoint.new(0.15224914252758026, Color3.fromRGB(50.69031357765198, 50.69031357765198, 50.69031357765198)),
	ColorSequenceKeypoint.new(0.4723183512687683, Color3.fromRGB(255, 0, 4.000000236555934)),
	ColorSequenceKeypoint.new(0.7577854990959167, Color3.fromRGB(50.13314567506313, 50.13314567506313, 50.13314567506313)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(48.000000938773155, 48.000000938773155, 48.000000938773155))
}
Converted["_UIGradient4"].Rotation = 180
Converted["_UIGradient4"].Parent = Converted["_UIStroke5"]

Converted["_HubCredits"].Font = Enum.Font.GothamBold
Converted["_HubCredits"].Text = "made and open sourced by imperial"
Converted["_HubCredits"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubCredits"].TextScaled = true
Converted["_HubCredits"].TextSize = 14
Converted["_HubCredits"].TextTransparency = 0.699999988079071
Converted["_HubCredits"].TextWrapped = true
Converted["_HubCredits"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_HubCredits"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_HubCredits"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubCredits"].BackgroundTransparency = 1
Converted["_HubCredits"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HubCredits"].BorderSizePixel = 0
Converted["_HubCredits"].Position = UDim2.new(0.785926819, 0, 0.160157606, 0)
Converted["_HubCredits"].Size = UDim2.new(0.316320807, 0, 0.0585099049, 0)
Converted["_HubCredits"].Visible = false
Converted["_HubCredits"].Name = "HubCredits"
Converted["_HubCredits"].Parent = Converted["_Menu"]

Converted["_HubDesc"].Font = Enum.Font.GothamBold
Converted["_HubDesc"].Text = "yet another random hub menu"
Converted["_HubDesc"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubDesc"].TextSize = 14
Converted["_HubDesc"].TextWrapped = true
Converted["_HubDesc"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_HubDesc"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_HubDesc"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubDesc"].BackgroundTransparency = 1
Converted["_HubDesc"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HubDesc"].BorderSizePixel = 0
Converted["_HubDesc"].Position = UDim2.new(0.708829343, 0, 0.116141364, 0)
Converted["_HubDesc"].Size = UDim2.new(0.470515788, 0, 0.082417585, 0)
Converted["_HubDesc"].Visible = false
Converted["_HubDesc"].Name = "HubDesc"
Converted["_HubDesc"].Parent = Converted["_Menu"]

Converted["_HubName"].Font = Enum.Font.GothamBold
Converted["_HubName"].RichText = true
Converted["_HubName"].Text = "YARHM Extra "
Converted["_HubName"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubName"].TextScaled = true
Converted["_HubName"].TextSize = 14
Converted["_HubName"].TextWrapped = true
Converted["_HubName"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_HubName"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_HubName"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubName"].BackgroundTransparency = 1
Converted["_HubName"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HubName"].BorderSizePixel = 0
Converted["_HubName"].Position = UDim2.new(0.186153606, 0, 0.112410031, 0)
Converted["_HubName"].Size = UDim2.new(0.259631485, 0, 0.0824175924, 0)
Converted["_HubName"].Name = "HubName"
Converted["_HubName"].Parent = Converted["_Menu"]

Converted["_CanvasGroup"].GroupTransparency = 1
Converted["_CanvasGroup"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_CanvasGroup"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_CanvasGroup"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_CanvasGroup"].BorderSizePixel = 0
Converted["_CanvasGroup"].Interactable = false
Converted["_CanvasGroup"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_CanvasGroup"].Size = UDim2.new(1, 0, 1, 0)
Converted["_CanvasGroup"].Visible = false
Converted["_CanvasGroup"].ZIndex = 999999998
Converted["_CanvasGroup"].Parent = Converted["_Menu"]

Converted["_UICorner19"].BottomLeftRadius = UDim.new(0, 16)
Converted["_UICorner19"].BottomRightRadius = UDim.new(0, 16)
Converted["_UICorner19"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner19"].TopLeftRadius = UDim.new(0, 16)
Converted["_UICorner19"].TopRightRadius = UDim.new(0, 16)
Converted["_UICorner19"].Parent = Converted["_CanvasGroup"]

Converted["_ImageLabel"].Image = "rbxassetid://17864987433"
-- Converted["_ImageLabel"].ImageContent = Content{SourceType=Uri, Uri=rbxassetid://17864987433}
Converted["_ImageLabel"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel"].BorderSizePixel = 0
Converted["_ImageLabel"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel"].Size = UDim2.new(0, 50, 0, 50)
Converted["_ImageLabel"].Visible = false
Converted["_ImageLabel"].ZIndex = 3
Converted["_ImageLabel"].Parent = Converted["_CanvasGroup"]

Converted["_Opener"].Font = Enum.Font.SourceSans
Converted["_Opener"].Text = ""
Converted["_Opener"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Opener"].TextSize = 14
Converted["_Opener"].AutoButtonColor = false
Converted["_Opener"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Opener"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Opener"].BorderSizePixel = 0
Converted["_Opener"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Opener"].Name = "Opener"
Converted["_Opener"].Parent = Converted["_CanvasGroup"]

Converted["_TextLabel5"].Font = Enum.Font.GothamBold
Converted["_TextLabel5"].Text = "YARHM Extra"
Converted["_TextLabel5"].TextColor3 = Color3.fromRGB(255, 69.00000348687172, 67.00000360608101)
Converted["_TextLabel5"].TextScaled = true
Converted["_TextLabel5"].TextSize = 14
Converted["_TextLabel5"].TextWrapped = true
Converted["_TextLabel5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel5"].BackgroundTransparency = 1
Converted["_TextLabel5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel5"].BorderSizePixel = 0
Converted["_TextLabel5"].Position = UDim2.new(0.204081595, 0, 0.447761208, 0)
Converted["_TextLabel5"].Size = UDim2.new(0, 260, 0, 27)
Converted["_TextLabel5"].ZIndex = 3
Converted["_TextLabel5"].Parent = Converted["_CanvasGroup"]

Converted["_CloseArea"].Text = ""
Converted["_CloseArea"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_CloseArea"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_CloseArea"].BackgroundTransparency = 1
Converted["_CloseArea"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_CloseArea"].BorderSizePixel = 0
Converted["_CloseArea"].Position = UDim2.new(0.5, 0, 0, 0)
Converted["_CloseArea"].Size = UDim2.new(0.326999992, 0, 0.184, 0)
Converted["_CloseArea"].ZIndex = 100
Converted["_CloseArea"].Name = "CloseArea"
Converted["_CloseArea"].Parent = Converted["_Menu"]

Converted["_Frame3"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Frame3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame3"].BackgroundTransparency = 0.6499999761581421
Converted["_Frame3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame3"].BorderSizePixel = 0
Converted["_Frame3"].Position = UDim2.new(0.5, 0, 0.699999988, 0)
Converted["_Frame3"].Size = UDim2.new(0.699999988, 0, 0.100000001, 0)
Converted["_Frame3"].Parent = Converted["_CloseArea"]

Converted["_UICorner20"].BottomLeftRadius = UDim.new(0, 9999)
Converted["_UICorner20"].BottomRightRadius = UDim.new(0, 9999)
Converted["_UICorner20"].CornerRadius = UDim.new(0, 9999)
Converted["_UICorner20"].TopLeftRadius = UDim.new(0, 9999)
Converted["_UICorner20"].TopRightRadius = UDim.new(0, 9999)
Converted["_UICorner20"].Parent = Converted["_Frame3"]

Converted["_themedColor5"].Value = "accentColor"
Converted["_themedColor5"].Name = "themedColor"
Converted["_themedColor5"].Parent = Converted["_Frame3"]

Converted["_TextLabel6"].Font = Enum.Font.Gotham
Converted["_TextLabel6"].Text = "Tap here to minimize."
Converted["_TextLabel6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel6"].TextSize = 15
Converted["_TextLabel6"].TextWrapped = true
Converted["_TextLabel6"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel6"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel6"].BackgroundTransparency = 0.4000000059604645
Converted["_TextLabel6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel6"].BorderSizePixel = 0
Converted["_TextLabel6"].Position = UDim2.new(0.5, 0, 0.680000007, 0)
Converted["_TextLabel6"].Size = UDim2.new(1.39999998, 0, 0.740999997, 0)
Converted["_TextLabel6"].ZIndex = 100
Converted["_TextLabel6"].Parent = Converted["_CloseArea"]

Converted["_UICorner21"].Parent = Converted["_TextLabel6"]

Converted["_AllowForSpring"].Name = "AllowForSpring"
Converted["_AllowForSpring"].Parent = Converted["_CloseArea"]

Converted["_themedColor6"].Value = "backgroundColorCSQ"
Converted["_themedColor6"].Name = "themedColor"
Converted["_themedColor6"].Parent = Converted["_Menu"]

Converted["_UIGradient5"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(68.00000354647636, 68.00000354647636, 68.00000354647636))
}
Converted["_UIGradient5"].Offset = Vector2.new(0, 0.800000011920929)
Converted["_UIGradient5"].Rotation = 68
Converted["_UIGradient5"].Parent = Converted["_Menu"]

Converted["_Area"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Area"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Area"].BackgroundTransparency = 1
Converted["_Area"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Area"].BorderSizePixel = 0
Converted["_Area"].Position = UDim2.new(0.659600496, 0, 0.60637325, 0)
Converted["_Area"].Size = UDim2.new(0.643815279, 0, 0.783582091, 0)
Converted["_Area"].Name = "Area"
Converted["_Area"].Parent = Converted["_Menu"]

Converted["_Area1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Area1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Area1"].ScrollBarThickness = 0
Converted["_Area1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Area1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Area1"].BackgroundTransparency = 1
Converted["_Area1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Area1"].BorderSizePixel = 0
Converted["_Area1"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_Area1"].Selectable = false
Converted["_Area1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Area1"].Name = "Area"
Converted["_Area1"].Parent = Converted["_Area"]

Converted["_TextLabel7"].Font = Enum.Font.GothamBold
Converted["_TextLabel7"].Text = "use afem max so i can make money"
Converted["_TextLabel7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel7"].TextSize = 14
Converted["_TextLabel7"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel7"].BackgroundTransparency = 1
Converted["_TextLabel7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel7"].BorderSizePixel = 0
Converted["_TextLabel7"].Position = UDim2.new(0.4923051, 0, 0.46438089, 0)
Converted["_TextLabel7"].Size = UDim2.new(0, 200, 0, 50)
Converted["_TextLabel7"].Parent = Converted["_Area1"]

Converted["_TextLabel8"].Font = Enum.Font.GothamBold
Converted["_TextLabel8"].Text = "YARHM EXTRA"
Converted["_TextLabel8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel8"].TextScaled = true
Converted["_TextLabel8"].TextSize = 14
Converted["_TextLabel8"].TextWrapped = true
Converted["_TextLabel8"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel8"].BackgroundTransparency = 1
Converted["_TextLabel8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel8"].BorderSizePixel = 0
Converted["_TextLabel8"].Position = UDim2.new(0.491272807, 0, 0.363785654, 0)
Converted["_TextLabel8"].Size = UDim2.new(0, 135, 0, 33)
Converted["_TextLabel8"].Parent = Converted["_Area1"]

Converted["_UICorner22"].Parent = Converted["_Area"]

Converted["_List"].AnchorPoint = Vector2.new(0, 0.5)
Converted["_List"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_List"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_List"].BorderSizePixel = 0
Converted["_List"].Position = UDim2.new(0, 0, 0.606999993, 0)
Converted["_List"].Size = UDim2.new(0.315405339, 0, 0.785387993, 0)
Converted["_List"].Name = "List"
Converted["_List"].Parent = Converted["_Menu"]

Converted["_UICorner23"].BottomLeftRadius = UDim.new(0, 16)
Converted["_UICorner23"].BottomRightRadius = UDim.new(0, 16)
Converted["_UICorner23"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner23"].TopLeftRadius = UDim.new(0, 16)
Converted["_UICorner23"].TopRightRadius = UDim.new(0, 16)
Converted["_UICorner23"].Parent = Converted["_List"]

Converted["_ScrollingFrame1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_ScrollingFrame1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_ScrollingFrame1"].ScrollBarThickness = 2
Converted["_ScrollingFrame1"].VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
Converted["_ScrollingFrame1"].Active = true
Converted["_ScrollingFrame1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ScrollingFrame1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ScrollingFrame1"].BackgroundTransparency = 1
Converted["_ScrollingFrame1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScrollingFrame1"].BorderSizePixel = 0
Converted["_ScrollingFrame1"].Position = UDim2.new(0.478333294, 0, 0.408619136, 0)
Converted["_ScrollingFrame1"].Size = UDim2.new(1, 0, 0.795258284, 0)
Converted["_ScrollingFrame1"].Parent = Converted["_List"]

Converted["_UIListLayout4"].Padding = UDim.new(0, 3)
Converted["_UIListLayout4"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout4"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout4"].Parent = Converted["_ScrollingFrame1"]

Converted["_UIPadding15"].PaddingLeft = UDim.new(0, 4)
Converted["_UIPadding15"].Parent = Converted["_ScrollingFrame1"]

Converted["_UIPadding16"].PaddingBottom = UDim.new(0, 10)
Converted["_UIPadding16"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding16"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding16"].PaddingTop = UDim.new(0, 10)
Converted["_UIPadding16"].Parent = Converted["_List"]

Converted["_UIStroke6"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke6"].Thickness = 0
Converted["_UIStroke6"].Parent = Converted["_List"]

Converted["_UIGradient6"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(111.00000098347664, 111.00000098347664, 111.00000098347664)),
	ColorSequenceKeypoint.new(0.6401384472846985, Color3.fromRGB(114.23875719308853, 114.23875719308853, 114.23875719308853)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
Converted["_UIGradient6"].Rotation = -44
Converted["_UIGradient6"].Parent = Converted["_UIStroke6"]

Converted["_AddCustomModule1"].Font = Enum.Font.Gotham
Converted["_AddCustomModule1"].Text = "+"
Converted["_AddCustomModule1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_AddCustomModule1"].TextScaled = true
Converted["_AddCustomModule1"].TextSize = 14
Converted["_AddCustomModule1"].TextWrapped = true
Converted["_AddCustomModule1"].AnchorPoint = Vector2.new(1, 1)
Converted["_AddCustomModule1"].BackgroundColor3 = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
Converted["_AddCustomModule1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_AddCustomModule1"].BorderSizePixel = 0
Converted["_AddCustomModule1"].Position = UDim2.new(1, 0, 1, 0)
Converted["_AddCustomModule1"].Size = UDim2.new(0.215681866, 0, 0.142528668, 0)
Converted["_AddCustomModule1"].Visible = false
Converted["_AddCustomModule1"].Name = "AddCustomModule"
Converted["_AddCustomModule1"].Parent = Converted["_List"]

Converted["_UICorner24"].Parent = Converted["_AddCustomModule1"]

Converted["_UIPadding17"].PaddingLeft = UDim.new(0, 1)
Converted["_UIPadding17"].Parent = Converted["_AddCustomModule1"]

Converted["_UIStroke7"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke7"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke7"].Parent = Converted["_AddCustomModule1"]

Converted["_themedColor7"].Value = "secondaryColor"
Converted["_themedColor7"].Name = "themedColor"
Converted["_themedColor7"].Parent = Converted["_UIStroke7"]

Converted["_themedColor8"].Value = "primaryColor"
Converted["_themedColor8"].Name = "themedColor"
Converted["_themedColor8"].Parent = Converted["_AddCustomModule1"]

Converted["_themedColor9"].Value = "primaryColor"
Converted["_themedColor9"].Name = "themedColor"
Converted["_themedColor9"].Parent = Converted["_List"]

Converted["_UIScale3"].Parent = Converted["_Menu"]

Converted["_Stub"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_Stub"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Stub"].BorderSizePixel = 0
Converted["_Stub"].Position = UDim2.new(0, 0, 0.214000002, 0)
Converted["_Stub"].Size = UDim2.new(0.0340136066, 0, 0.055970151, 0)
Converted["_Stub"].ZIndex = -9999
Converted["_Stub"].Name = "Stub"
Converted["_Stub"].Parent = Converted["_Menu"]

Converted["_themedColor10"].Value = "primaryColor"
Converted["_themedColor10"].Name = "themedColor"
Converted["_themedColor10"].Parent = Converted["_Stub"]

Converted["_Stub1"].AnchorPoint = Vector2.new(1, 1)
Converted["_Stub1"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_Stub1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Stub1"].BorderSizePixel = 0
Converted["_Stub1"].Position = UDim2.new(0.315192729, 0, 1, 0)
Converted["_Stub1"].Size = UDim2.new(0.0453514755, 0, 0.074626863, 0)
Converted["_Stub1"].ZIndex = -9999
Converted["_Stub1"].Name = "Stub"
Converted["_Stub1"].Parent = Converted["_Menu"]

Converted["_themedColor11"].Value = "primaryColor"
Converted["_themedColor11"].Name = "themedColor"
Converted["_themedColor11"].Parent = Converted["_Stub1"]

Converted["_PHContainer"].AnchorPoint = Vector2.new(1, 1)
Converted["_PHContainer"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PHContainer"].BackgroundTransparency = 1
Converted["_PHContainer"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PHContainer"].BorderSizePixel = 0
Converted["_PHContainer"].Position = UDim2.new(1, -30, 0, -1)
Converted["_PHContainer"].Size = UDim2.new(0, 100, 0, 100)
Converted["_PHContainer"].Visible = false
Converted["_PHContainer"].Name = "PHContainer"
Converted["_PHContainer"].Parent = Converted["_Menu"]

Converted["_PHContainerInner"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_PHContainerInner"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PHContainerInner"].BackgroundTransparency = 1
Converted["_PHContainerInner"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PHContainerInner"].BorderSizePixel = 0
Converted["_PHContainerInner"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_PHContainerInner"].Size = UDim2.new(0, 100, 0, 100)
Converted["_PHContainerInner"].Name = "PHContainerInner"
Converted["_PHContainerInner"].Parent = Converted["_PHContainer"]

Converted["_Rotator"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_Rotator"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Rotator"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rotator"].BorderSizePixel = 0
Converted["_Rotator"].Position = UDim2.new(0.5, 0, 2, 0)
Converted["_Rotator"].Name = "Rotator"
Converted["_Rotator"].Parent = Converted["_PHContainerInner"]

Converted["_PH"].Image = "rbxassetid://97410315599586"
-- Converted["_PH"].ImageContent = Content{SourceType=Uri, Uri=rbxassetid://97410315599586}
Converted["_PH"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_PH"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PH"].BackgroundTransparency = 1
Converted["_PH"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PH"].BorderSizePixel = 0
Converted["_PH"].Position = UDim2.new(0.5, 0, 1.20000005, 0)
Converted["_PH"].Size = UDim2.new(0, 100, 0, 100)
Converted["_PH"].ZIndex = 0
Converted["_PH"].Name = "PH"
Converted["_PH"].Parent = Converted["_Rotator"]

Converted["_Tap"].Font = Enum.Font.SourceSans
Converted["_Tap"].Text = ""
Converted["_Tap"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Tap"].TextSize = 14
Converted["_Tap"].AutoButtonColor = false
Converted["_Tap"].Active = false
Converted["_Tap"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Tap"].BackgroundTransparency = 1
Converted["_Tap"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Tap"].BorderSizePixel = 0
Converted["_Tap"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Tap"].Name = "Tap"
Converted["_Tap"].Parent = Converted["_PHContainerInner"]

Converted["_TextLabel9"].Font = Enum.Font.Gotham
Converted["_TextLabel9"].Text = "Mabuhay ang Pilipinas! "
Converted["_TextLabel9"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel9"].TextSize = 15
Converted["_TextLabel9"].TextTransparency = 1
Converted["_TextLabel9"].TextWrapped = true
Converted["_TextLabel9"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_TextLabel9"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel9"].BackgroundTransparency = 1
Converted["_TextLabel9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel9"].BorderSizePixel = 0
Converted["_TextLabel9"].Position = UDim2.new(0.5, 0, 0.300000012, 0)
Converted["_TextLabel9"].Size = UDim2.new(0, 200, 0, 40)
Converted["_TextLabel9"].Parent = Converted["_PHContainer"]

Converted["_UICorner25"].Parent = Converted["_TextLabel9"]

Converted["_Ad"].GroupTransparency = 1
Converted["_Ad"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_Ad"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Ad"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Ad"].BorderSizePixel = 0
Converted["_Ad"].Interactable = false
Converted["_Ad"].Position = UDim2.new(0.657790542, 0, 0.99626863, 0)
Converted["_Ad"].Size = UDim2.new(0.680272102, 0, 0.779850721, 0)
Converted["_Ad"].Name = "Ad"
Converted["_Ad"].Parent = Converted["_Menu"]

Converted["_UICorner26"].BottomLeftRadius = UDim.new(0, 0)
Converted["_UICorner26"].BottomRightRadius = UDim.new(0, 16)
Converted["_UICorner26"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner26"].TopLeftRadius = UDim.new(0, 16)
Converted["_UICorner26"].TopRightRadius = UDim.new(0, 16)
Converted["_UICorner26"].Parent = Converted["_Ad"]

Converted["_Image"].Image = "rbxassetid://111878968263561"
-- Converted["_Image"].ImageContent = Content{SourceType=Uri, Uri=rbxassetid://111878968263561}
Converted["_Image"].ScaleType = Enum.ScaleType.Crop
Converted["_Image"].TileSize = UDim2.new(0, 100, 0, 100)
Converted["_Image"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Image"].BackgroundTransparency = 1
Converted["_Image"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Image"].BorderSizePixel = 0
Converted["_Image"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Image"].Name = "Image"
Converted["_Image"].Parent = Converted["_Ad"]

Converted["_Metadata"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_Metadata"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Metadata"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Metadata"].BorderSizePixel = 0
Converted["_Metadata"].Position = UDim2.new(0.5, 0, 1, 0)
Converted["_Metadata"].Size = UDim2.new(1, 0, 0, 45)
Converted["_Metadata"].Name = "Metadata"
Converted["_Metadata"].Parent = Converted["_Ad"]

Converted["_UIGradient7"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
Converted["_UIGradient7"].Rotation = -90
Converted["_UIGradient7"].Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0.38124996423721313),
	NumberSequenceKeypoint.new(1, 1)
}
Converted["_UIGradient7"].Parent = Converted["_Metadata"]

Converted["_TextLabel10"].Font = Enum.Font.Unknown
Converted["_TextLabel10"].RichText = true
Converted["_TextLabel10"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel10"].TextScaled = true
Converted["_TextLabel10"].TextSize = 14
Converted["_TextLabel10"].TextWrapped = true
Converted["_TextLabel10"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel10"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel10"].BackgroundTransparency = 1
Converted["_TextLabel10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel10"].BorderSizePixel = 0
Converted["_TextLabel10"].Size = UDim2.new(0.550000012, 0, 1, 0)
Converted["_TextLabel10"].Parent = Converted["_Metadata"]

Converted["_UIPadding18"].PaddingBottom = UDim.new(0, 8)
Converted["_UIPadding18"].PaddingLeft = UDim.new(0, 8)
Converted["_UIPadding18"].PaddingRight = UDim.new(0, 8)
Converted["_UIPadding18"].PaddingTop = UDim.new(0, 8)
Converted["_UIPadding18"].Parent = Converted["_Metadata"]

Converted["_CTA"].Font = Enum.Font.Unknown
Converted["_CTA"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_CTA"].TextScaled = true
Converted["_CTA"].TextSize = 14
Converted["_CTA"].TextWrapped = true
Converted["_CTA"].AnchorPoint = Vector2.new(1, 0.5)
Converted["_CTA"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_CTA"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_CTA"].BorderSizePixel = 0
Converted["_CTA"].Position = UDim2.new(1, 0, 0.5, 0)
Converted["_CTA"].Size = UDim2.new(0.333000004, 0, 1, 0)
Converted["_CTA"].Name = "CTA"
Converted["_CTA"].Parent = Converted["_Metadata"]

Converted["_UICorner27"].Parent = Converted["_CTA"]

Converted["_UIPadding19"].PaddingBottom = UDim.new(0, 8)
Converted["_UIPadding19"].PaddingLeft = UDim.new(0, 8)
Converted["_UIPadding19"].PaddingRight = UDim.new(0, 8)
Converted["_UIPadding19"].PaddingTop = UDim.new(0, 8)
Converted["_UIPadding19"].Parent = Converted["_CTA"]

Converted["_Sponsoered"].Font = Enum.Font.GothamBold
Converted["_Sponsoered"].Text = "SPONSORED"
Converted["_Sponsoered"].TextColor3 = Color3.fromRGB(50.00000461935997, 199.00001853704453, 31.000001952052116)
Converted["_Sponsoered"].TextSize = 14
Converted["_Sponsoered"].TextTransparency = 0.5
Converted["_Sponsoered"].AnchorPoint = Vector2.new(1, 0)
Converted["_Sponsoered"].AutomaticSize = Enum.AutomaticSize.XY
Converted["_Sponsoered"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Sponsoered"].BackgroundTransparency = 1
Converted["_Sponsoered"].BorderSizePixel = 0
Converted["_Sponsoered"].Position = UDim2.new(1, -10, 0, 10)
Converted["_Sponsoered"].Visible = false
Converted["_Sponsoered"].Name = "Sponsoered"
Converted["_Sponsoered"].Parent = Converted["_Ad"]

Converted["_Toggle"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_Toggle"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle"].BorderSizePixel = 0
Converted["_Toggle"].Size = UDim2.new(1, 0, 0, 45)
Converted["_Toggle"].Visible = false
Converted["_Toggle"].Name = "Toggle"
Converted["_Toggle"].Parent = Converted["_YARHM"]

Converted["_TextLabel11"].Font = Enum.Font.Unknown
Converted["_TextLabel11"].Text = "Loop walkspeed and FOV"
Converted["_TextLabel11"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel11"].TextScaled = true
Converted["_TextLabel11"].TextSize = 14
Converted["_TextLabel11"].TextWrapped = true
Converted["_TextLabel11"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel11"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel11"].BackgroundTransparency = 1
Converted["_TextLabel11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel11"].BorderSizePixel = 0
Converted["_TextLabel11"].Size = UDim2.new(0, 125, 0, 25)
Converted["_TextLabel11"].Parent = Converted["_Toggle"]

Converted["_UIListLayout5"].HorizontalFlex = Enum.UIFlexAlignment.SpaceBetween
Converted["_UIListLayout5"].Padding = UDim.new(0, 25)
Converted["_UIListLayout5"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout5"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout5"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout5"].Parent = Converted["_Toggle"]

Converted["_Frame4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame4"].BackgroundTransparency = 1
Converted["_Frame4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame4"].BorderSizePixel = 0
Converted["_Frame4"].Size = UDim2.new(0.400000006, 0, 1, 0)
Converted["_Frame4"].Parent = Converted["_Toggle"]

Converted["_Frame5"].AnchorPoint = Vector2.new(1, 0.5)
Converted["_Frame5"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 46.000001057982445, 46.000001057982445)
Converted["_Frame5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame5"].BorderSizePixel = 0
Converted["_Frame5"].Position = UDim2.new(1, 0, 0.5, 0)
Converted["_Frame5"].Size = UDim2.new(0, 89, 1, 0)
Converted["_Frame5"].Parent = Converted["_Frame4"]

Converted["_UICorner28"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner28"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner28"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner28"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner28"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner28"].Parent = Converted["_Frame5"]

Converted["_Toggler"].Font = Enum.Font.SourceSans
Converted["_Toggler"].Text = ""
Converted["_Toggler"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggler"].TextSize = 14
Converted["_Toggler"].AnchorPoint = Vector2.new(0, 0.5)
Converted["_Toggler"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Toggler"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggler"].BorderSizePixel = 0
Converted["_Toggler"].Position = UDim2.new(0, 0, 0.5, 0)
Converted["_Toggler"].Size = UDim2.new(0.5, 0, 0.800000012, 0)
Converted["_Toggler"].Name = "Toggler"
Converted["_Toggler"].Parent = Converted["_Frame5"]

Converted["_UICorner29"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner29"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner29"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner29"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner29"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner29"].Parent = Converted["_Toggler"]

Converted["_ImageLabel1"].Image = "rbxassetid://10002373478"
Converted["_ImageLabel1"].ImageColor3 = Color3.fromRGB(255, 0, 4.000000236555934)
-- Converted["_ImageLabel1"].ImageContent = Content{SourceType=Uri, Uri=rbxassetid://10002373478}
Converted["_ImageLabel1"].ImageTransparency = 1
Converted["_ImageLabel1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel1"].BackgroundTransparency = 1
Converted["_ImageLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel1"].BorderSizePixel = 0
Converted["_ImageLabel1"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel1"].Size = UDim2.new(0, 20, 0, 20)
Converted["_ImageLabel1"].Parent = Converted["_Toggler"]

Converted["_UIPadding20"].PaddingLeft = UDim.new(0, 4)
Converted["_UIPadding20"].PaddingRight = UDim.new(0, 4)
Converted["_UIPadding20"].Parent = Converted["_Frame5"]

Converted["_UICorner30"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner30"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner30"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner30"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner30"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner30"].Parent = Converted["_Toggle"]

Converted["_themedColor12"].Value = "primaryColor"
Converted["_themedColor12"].Name = "themedColor"
Converted["_themedColor12"].Parent = Converted["_Toggle"]

Converted["_UIPadding21"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding21"].PaddingLeft = UDim.new(0, 16)
Converted["_UIPadding21"].PaddingRight = UDim.new(0, 8)
Converted["_UIPadding21"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding21"].Parent = Converted["_Toggle"]

Converted["_Modules"].Name = "Modules"
Converted["_Modules"].Parent = Converted["_YARHM"]

Converted["_NotificationSample"].AnchorPoint = Vector2.new(0.5, 0)
Converted["_NotificationSample"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_NotificationSample"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_NotificationSample"].BorderSizePixel = 0
Converted["_NotificationSample"].ClipsDescendants = true
Converted["_NotificationSample"].Position = UDim2.new(0.5, 0, 0, 10)
Converted["_NotificationSample"].Size = UDim2.new(0, 400, 0, 50)
Converted["_NotificationSample"].Visible = false
Converted["_NotificationSample"].ZIndex = 5
Converted["_NotificationSample"].Name = "NotificationSample"
Converted["_NotificationSample"].Parent = Converted["_YARHM"]

Converted["_UICorner31"].BottomLeftRadius = UDim.new(0, 10)
Converted["_UICorner31"].BottomRightRadius = UDim.new(0, 10)
Converted["_UICorner31"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner31"].TopLeftRadius = UDim.new(0, 10)
Converted["_UICorner31"].TopRightRadius = UDim.new(0, 10)
Converted["_UICorner31"].Parent = Converted["_NotificationSample"]

Converted["_UIStroke8"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke8"].Thickness = 1.600000023841858
Converted["_UIStroke8"].Parent = Converted["_NotificationSample"]

Converted["_UIGradient8"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(46.000001057982445, 46.000001057982445, 46.000001057982445)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(12.000000234693289, 12.000000234693289, 12.000000234693289))
}
Converted["_UIGradient8"].Parent = Converted["_NotificationSample"]

Converted["_ImageLabel2"].Image = "rbxassetid://11780939099"
-- Converted["_ImageLabel2"].ImageContent = Content{SourceType=Uri, Uri=rbxassetid://11780939099}
Converted["_ImageLabel2"].ScaleType = Enum.ScaleType.Fit
Converted["_ImageLabel2"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel2"].BackgroundTransparency = 1
Converted["_ImageLabel2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel2"].BorderSizePixel = 0
Converted["_ImageLabel2"].Position = UDim2.new(0.100000001, 0, 0.5, 0)
Converted["_ImageLabel2"].Size = UDim2.new(0.0799999982, 0, 0.639999986, 0)
Converted["_ImageLabel2"].Parent = Converted["_NotificationSample"]

Converted["_TextLabel12"].Font = Enum.Font.Gotham
Converted["_TextLabel12"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel12"].TextScaled = true
Converted["_TextLabel12"].TextSize = 14
Converted["_TextLabel12"].TextWrapped = true
Converted["_TextLabel12"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel12"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel12"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel12"].BackgroundTransparency = 1
Converted["_TextLabel12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel12"].BorderSizePixel = 0
Converted["_TextLabel12"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_TextLabel12"].Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
Converted["_TextLabel12"].Parent = Converted["_NotificationSample"]

Converted["_UITextSizeConstraint1"].MaxTextSize = 30
Converted["_UITextSizeConstraint1"].Parent = Converted["_TextLabel12"]

Converted["_Close"].Image = "rbxassetid://10002373478"
-- Converted["_Close"].ImageContent = Content{SourceType=Uri, Uri=rbxassetid://10002373478}
Converted["_Close"].ScaleType = Enum.ScaleType.Fit
Converted["_Close"].Active = false
Converted["_Close"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Close"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Close"].BackgroundTransparency = 1
Converted["_Close"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Close"].BorderSizePixel = 0
Converted["_Close"].Position = UDim2.new(0.899999976, 0, 0.5, 0)
Converted["_Close"].Selectable = false
Converted["_Close"].Size = UDim2.new(0.0799999982, 0, 0.639999986, 0)
Converted["_Close"].Name = "Close"
Converted["_Close"].Parent = Converted["_NotificationSample"]

Converted["_UICorner32"].Parent = Converted["_Close"]

Converted["_UIStroke9"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke9"].Parent = Converted["_Close"]

Converted["_UIScale4"].Scale = 0.800000011920929
Converted["_UIScale4"].Parent = Converted["_NotificationSample"]

Converted["_themedColor13"].Value = "backgroundColorCSQ"
Converted["_themedColor13"].Name = "themedColor"
Converted["_themedColor13"].Parent = Converted["_NotificationSample"]

Converted["_Dialog"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_Dialog"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Dialog"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dialog"].BorderSizePixel = 0
Converted["_Dialog"].Position = UDim2.new(0.499000013, 0, 0.984000027, 0)
Converted["_Dialog"].Size = UDim2.new(0, 313, 0, 147)
Converted["_Dialog"].Visible = false
Converted["_Dialog"].ZIndex = 5
Converted["_Dialog"].Name = "Dialog"
Converted["_Dialog"].Parent = Converted["_YARHM"]

Converted["_UICorner33"].Parent = Converted["_Dialog"]

Converted["_UIGradient9"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(68.00000354647636, 68.00000354647636, 68.00000354647636))
}
Converted["_UIGradient9"].Rotation = -133
Converted["_UIGradient9"].Parent = Converted["_Dialog"]

Converted["_UIPadding22"].PaddingBottom = UDim.new(0, 15)
Converted["_UIPadding22"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding22"].PaddingRight = UDim.new(0, 15)
Converted["_UIPadding22"].PaddingTop = UDim.new(0, 15)
Converted["_UIPadding22"].Parent = Converted["_Dialog"]

Converted["_UIStroke10"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke10"].Thickness = 2
Converted["_UIStroke10"].Parent = Converted["_Dialog"]

Converted["_UIGradient10"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(111.00000098347664, 111.00000098347664, 111.00000098347664)),
	ColorSequenceKeypoint.new(0.6401384472846985, Color3.fromRGB(114.23875719308853, 114.23875719308853, 114.23875719308853)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
Converted["_UIGradient10"].Rotation = -107
Converted["_UIGradient10"].Parent = Converted["_UIStroke10"]

Converted["_DialogTitle"].Font = Enum.Font.Unknown
Converted["_DialogTitle"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DialogTitle"].TextScaled = true
Converted["_DialogTitle"].TextSize = 14
Converted["_DialogTitle"].TextWrapped = true
Converted["_DialogTitle"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_DialogTitle"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DialogTitle"].BackgroundTransparency = 1
Converted["_DialogTitle"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DialogTitle"].BorderSizePixel = 0
Converted["_DialogTitle"].Size = UDim2.new(0.997416437, 0, 0.16459392, 0)
Converted["_DialogTitle"].Name = "DialogTitle"
Converted["_DialogTitle"].Parent = Converted["_Dialog"]

Converted["_UIListLayout6"].Padding = UDim.new(0, 3)
Converted["_UIListLayout6"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout6"].Parent = Converted["_Dialog"]

Converted["_DialogDesc"].Font = Enum.Font.Unknown
Converted["_DialogDesc"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DialogDesc"].TextScaled = true
Converted["_DialogDesc"].TextSize = 14
Converted["_DialogDesc"].TextWrapped = true
Converted["_DialogDesc"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_DialogDesc"].TextYAlignment = Enum.TextYAlignment.Top
Converted["_DialogDesc"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DialogDesc"].BackgroundTransparency = 1
Converted["_DialogDesc"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DialogDesc"].BorderSizePixel = 0
Converted["_DialogDesc"].Position = UDim2.new(0, 0, 0.187079012, 0)
Converted["_DialogDesc"].Size = UDim2.new(0.997416437, 0, 0.604575336, 0)
Converted["_DialogDesc"].Name = "DialogDesc"
Converted["_DialogDesc"].Parent = Converted["_Dialog"]

Converted["_UITextSizeConstraint2"].MaxTextSize = 20
Converted["_UITextSizeConstraint2"].MinTextSize = 5
Converted["_UITextSizeConstraint2"].Parent = Converted["_DialogDesc"]

Converted["_Options"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Options"].BackgroundTransparency = 1
Converted["_Options"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Options"].BorderSizePixel = 0
Converted["_Options"].Position = UDim2.new(0, 0, 0.82045126, 0)
Converted["_Options"].Size = UDim2.new(0.997436285, 0, 0.241758227, 0)
Converted["_Options"].Name = "Options"
Converted["_Options"].Parent = Converted["_Dialog"]

Converted["_UIListLayout7"].Padding = UDim.new(0, 10)
Converted["_UIListLayout7"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout7"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout7"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout7"].Parent = Converted["_Options"]

Converted["_OptionPlaceholder"].Font = Enum.Font.GothamBold
Converted["_OptionPlaceholder"].RichText = true
Converted["_OptionPlaceholder"].Text = "aaaaaaaaaaa"
Converted["_OptionPlaceholder"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_OptionPlaceholder"].TextScaled = true
Converted["_OptionPlaceholder"].TextSize = 100
Converted["_OptionPlaceholder"].TextWrapped = true
Converted["_OptionPlaceholder"].BackgroundColor3 = Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)
Converted["_OptionPlaceholder"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_OptionPlaceholder"].BorderSizePixel = 0
Converted["_OptionPlaceholder"].Size = UDim2.new(0.532000005, -5, 1.00899994, 0)
Converted["_OptionPlaceholder"].Visible = false
Converted["_OptionPlaceholder"].Name = "OptionPlaceholder"
Converted["_OptionPlaceholder"].Parent = Converted["_Options"]

Converted["_UIPadding23"].PaddingBottom = UDim.new(0, 1)
Converted["_UIPadding23"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding23"].PaddingRight = UDim.new(0, 15)
Converted["_UIPadding23"].PaddingTop = UDim.new(0, 1)
Converted["_UIPadding23"].Parent = Converted["_OptionPlaceholder"]

Converted["_UICorner34"].Parent = Converted["_OptionPlaceholder"]

Converted["_UIStroke11"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke11"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke11"].Thickness = 2
Converted["_UIStroke11"].Parent = Converted["_OptionPlaceholder"]

Converted["_UIGradient11"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(111.00000098347664, 111.00000098347664, 111.00000098347664)),
	ColorSequenceKeypoint.new(0.6401384472846985, Color3.fromRGB(114.23875719308853, 114.23875719308853, 114.23875719308853)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
Converted["_UIGradient11"].Rotation = -107
Converted["_UIGradient11"].Parent = Converted["_UIStroke11"]

Converted["_themedColor14"].Value = "primaryColor"
Converted["_themedColor14"].Name = "themedColor"
Converted["_themedColor14"].Parent = Converted["_OptionPlaceholder"]

Converted["_OnSelect"].Name = "OnSelect"
Converted["_OnSelect"].Parent = Converted["_Dialog"]

Converted["_UIScale5"].Parent = Converted["_Dialog"]

Converted["_themedColor15"].Value = "backgroundColorCSQ"
Converted["_themedColor15"].Name = "themedColor"
Converted["_themedColor15"].Parent = Converted["_Dialog"]

Converted["_FloatingButtonSetting"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_FloatingButtonSetting"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FloatingButtonSetting"].BackgroundTransparency = 0.5
Converted["_FloatingButtonSetting"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FloatingButtonSetting"].BorderSizePixel = 0
Converted["_FloatingButtonSetting"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_FloatingButtonSetting"].Size = UDim2.new(1, 0, 1, 0)
Converted["_FloatingButtonSetting"].Visible = false
Converted["_FloatingButtonSetting"].ZIndex = 10
Converted["_FloatingButtonSetting"].Name = "FloatingButtonSetting"
Converted["_FloatingButtonSetting"].Parent = Converted["_YARHM"]

Converted["_ControlBarContainer"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_ControlBarContainer"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ControlBarContainer"].BackgroundTransparency = 1
Converted["_ControlBarContainer"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ControlBarContainer"].BorderSizePixel = 0
Converted["_ControlBarContainer"].Position = UDim2.new(0.5, 0, 1, -50)
Converted["_ControlBarContainer"].Size = UDim2.new(1, 0, 0, 40)
Converted["_ControlBarContainer"].Name = "ControlBarContainer"
Converted["_ControlBarContainer"].Parent = Converted["_FloatingButtonSetting"]

Converted["_ControlBar"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_ControlBar"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ControlBar"].BackgroundTransparency = 1
Converted["_ControlBar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ControlBar"].BorderSizePixel = 0
Converted["_ControlBar"].Position = UDim2.new(0.5, 0, 1, -30)
Converted["_ControlBar"].Size = UDim2.new(1, 0, 0, 40)
Converted["_ControlBar"].Name = "ControlBar"
Converted["_ControlBar"].Parent = Converted["_ControlBarContainer"]

Converted["_UIListLayout8"].Padding = UDim.new(0, 5)
Converted["_UIListLayout8"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout8"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout8"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout8"].Parent = Converted["_ControlBar"]

Converted["_Visibility"].Font = Enum.Font.Gotham
Converted["_Visibility"].Text = "Toggle visibility"
Converted["_Visibility"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Visibility"].TextScaled = true
Converted["_Visibility"].TextSize = 14
Converted["_Visibility"].TextWrapped = true
Converted["_Visibility"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 46.000001057982445, 46.000001057982445)
Converted["_Visibility"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Visibility"].BorderSizePixel = 0
Converted["_Visibility"].Size = UDim2.new(0, 200, 1, 0)
Converted["_Visibility"].Name = "Visibility"
Converted["_Visibility"].Parent = Converted["_ControlBar"]

Converted["_UICorner35"].BottomLeftRadius = UDim.new(0, 16)
Converted["_UICorner35"].BottomRightRadius = UDim.new(0, 16)
Converted["_UICorner35"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner35"].TopLeftRadius = UDim.new(0, 16)
Converted["_UICorner35"].TopRightRadius = UDim.new(0, 16)
Converted["_UICorner35"].Parent = Converted["_Visibility"]

Converted["_UIPadding24"].PaddingBottom = UDim.new(0, 7)
Converted["_UIPadding24"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding24"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding24"].PaddingTop = UDim.new(0, 7)
Converted["_UIPadding24"].Parent = Converted["_Visibility"]

Converted["_Event"].Parent = Converted["_Visibility"]

Converted["_themedColor16"].Value = "primaryColor"
Converted["_themedColor16"].Name = "themedColor"
Converted["_themedColor16"].Parent = Converted["_Visibility"]

Converted["_Lock1"].Font = Enum.Font.Gotham
Converted["_Lock1"].Text = "Toggle lock"
Converted["_Lock1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Lock1"].TextScaled = true
Converted["_Lock1"].TextSize = 14
Converted["_Lock1"].TextWrapped = true
Converted["_Lock1"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 46.000001057982445, 46.000001057982445)
Converted["_Lock1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Lock1"].BorderSizePixel = 0
Converted["_Lock1"].Size = UDim2.new(0, 200, 1, 0)
Converted["_Lock1"].Name = "Lock"
Converted["_Lock1"].Parent = Converted["_ControlBar"]

Converted["_UICorner36"].BottomLeftRadius = UDim.new(0, 16)
Converted["_UICorner36"].BottomRightRadius = UDim.new(0, 16)
Converted["_UICorner36"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner36"].TopLeftRadius = UDim.new(0, 16)
Converted["_UICorner36"].TopRightRadius = UDim.new(0, 16)
Converted["_UICorner36"].Parent = Converted["_Lock1"]

Converted["_UIPadding25"].PaddingBottom = UDim.new(0, 7)
Converted["_UIPadding25"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding25"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding25"].PaddingTop = UDim.new(0, 7)
Converted["_UIPadding25"].Parent = Converted["_Lock1"]

Converted["_Event1"].Parent = Converted["_Lock1"]

Converted["_themedColor17"].Value = "primaryColor"
Converted["_themedColor17"].Name = "themedColor"
Converted["_themedColor17"].Parent = Converted["_Lock1"]

Converted["_Exit"].Font = Enum.Font.GothamBold
Converted["_Exit"].Text = "X"
Converted["_Exit"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Exit"].TextScaled = true
Converted["_Exit"].TextSize = 14
Converted["_Exit"].TextWrapped = true
Converted["_Exit"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 0, 0)
Converted["_Exit"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Exit"].BorderSizePixel = 0
Converted["_Exit"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Exit"].Name = "Exit"
Converted["_Exit"].Parent = Converted["_ControlBar"]

Converted["_UICorner37"].BottomLeftRadius = UDim.new(0, 16)
Converted["_UICorner37"].BottomRightRadius = UDim.new(0, 16)
Converted["_UICorner37"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner37"].TopLeftRadius = UDim.new(0, 16)
Converted["_UICorner37"].TopRightRadius = UDim.new(0, 16)
Converted["_UICorner37"].Parent = Converted["_Exit"]

Converted["_UIPadding26"].PaddingBottom = UDim.new(0, 7)
Converted["_UIPadding26"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding26"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding26"].PaddingTop = UDim.new(0, 7)
Converted["_UIPadding26"].Parent = Converted["_Exit"]

Converted["_UIAspectRatioConstraint"].Parent = Converted["_Exit"]

Converted["_themedColor18"].Value = "secondaryColor"
Converted["_themedColor18"].Name = "themedColor"
Converted["_themedColor18"].Parent = Converted["_Exit"]

Converted["_UIListLayout9"].Padding = UDim.new(0, 5)
Converted["_UIListLayout9"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout9"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout9"].Parent = Converted["_ControlBarContainer"]

Converted["_Tip"].Font = Enum.Font.GothamBold
Converted["_Tip"].Text = "Drag the button around to resize!"
Converted["_Tip"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Tip"].TextScaled = true
Converted["_Tip"].TextSize = 14
Converted["_Tip"].TextWrapped = true
Converted["_Tip"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Tip"].BackgroundTransparency = 1
Converted["_Tip"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Tip"].BorderSizePixel = 0
Converted["_Tip"].Size = UDim2.new(1, 0, 0, 10)
Converted["_Tip"].Name = "Tip"
Converted["_Tip"].Parent = Converted["_ControlBarContainer"]

Converted["_UIStroke12"].Parent = Converted["_Tip"]

Converted["_UIScale6"].Parent = Converted["_ControlBarContainer"]

Converted["_FloatingButtons"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_FloatingButtons"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_FloatingButtons"].BackgroundTransparency = 1
Converted["_FloatingButtons"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FloatingButtons"].BorderSizePixel = 0
Converted["_FloatingButtons"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_FloatingButtons"].Size = UDim2.new(1, 0, 1, 0)
Converted["_FloatingButtons"].ZIndex = 3
Converted["_FloatingButtons"].Name = "FloatingButtons"
Converted["_FloatingButtons"].Parent = Converted["_FloatingButtonSetting"]

Converted["_FloatingButtons1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_FloatingButtons1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_FloatingButtons1"].BackgroundTransparency = 1
Converted["_FloatingButtons1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FloatingButtons1"].BorderSizePixel = 0
Converted["_FloatingButtons1"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_FloatingButtons1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_FloatingButtons1"].ZIndex = 3
Converted["_FloatingButtons1"].Name = "FloatingButtons"
Converted["_FloatingButtons1"].Parent = Converted["_YARHM"]

Converted["_TextBoxPlaceholder"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBoxPlaceholder"].BackgroundTransparency = 1
Converted["_TextBoxPlaceholder"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextBoxPlaceholder"].BorderSizePixel = 0
Converted["_TextBoxPlaceholder"].Size = UDim2.new(1, 0, 0, 45)
Converted["_TextBoxPlaceholder"].Visible = false
Converted["_TextBoxPlaceholder"].Name = "TextBoxPlaceholder"
Converted["_TextBoxPlaceholder"].Parent = Converted["_YARHM"]

Converted["_UIListLayout10"].Padding = UDim.new(0, 5)
Converted["_UIListLayout10"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout10"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout10"].Parent = Converted["_TextBoxPlaceholder"]

Converted["_TextButton"].Font = Enum.Font.Gotham
Converted["_TextButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextButton"].TextScaled = true
Converted["_TextButton"].TextSize = 14
Converted["_TextButton"].TextWrapped = true
Converted["_TextButton"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_TextButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextButton"].BorderSizePixel = 0
Converted["_TextButton"].Position = UDim2.new(0.292333364, 0, 1.67999995, 0)
Converted["_TextButton"].Size = UDim2.new(0, 75, 0, 45)
Converted["_TextButton"].Parent = Converted["_TextBoxPlaceholder"]

Converted["_UICorner38"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner38"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner38"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner38"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner38"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner38"].Parent = Converted["_TextButton"]

Converted["_UIPadding27"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding27"].PaddingLeft = UDim.new(0, 8)
Converted["_UIPadding27"].PaddingRight = UDim.new(0, 8)
Converted["_UIPadding27"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding27"].Parent = Converted["_TextButton"]

Converted["_UITextSizeConstraint3"].MaxTextSize = 15
Converted["_UITextSizeConstraint3"].Parent = Converted["_TextButton"]

Converted["_TextBox1"].Font = Enum.Font.Gotham
Converted["_TextBox1"].PlaceholderColor3 = Color3.fromRGB(178.49999696016312, 178.49999696016312, 178.49999696016312)
Converted["_TextBox1"].PlaceholderText = "Placeholder"
Converted["_TextBox1"].Text = ""
Converted["_TextBox1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox1"].TextSize = 14
Converted["_TextBox1"].TextWrapped = true
Converted["_TextBox1"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_TextBox1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextBox1"].BorderSizePixel = 0
Converted["_TextBox1"].Size = UDim2.new(0.699999988, 0, 0, 45)
Converted["_TextBox1"].Parent = Converted["_TextBoxPlaceholder"]

Converted["_UICorner39"].BottomLeftRadius = UDim.new(1, 0)
Converted["_UICorner39"].BottomRightRadius = UDim.new(1, 0)
Converted["_UICorner39"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner39"].TopLeftRadius = UDim.new(1, 0)
Converted["_UICorner39"].TopRightRadius = UDim.new(1, 0)
Converted["_UICorner39"].Parent = Converted["_TextBox1"]

-- Routine Module Scripts:

local routine_module_scripts = {}

do -- Routine Module: StarterGui.YARHM.FUNCTIONS
    local script = Instance.new("ModuleScript")
    script.Name = "FUNCTIONS"
    script.Parent = Converted["_YARHM"]
    local function module_script()
    -- © Aetherion 2026

		local FUNCTIONSmodule = {}
		FUNCTIONSmodule.__v = "1.0"
		
		local ts = game:GetService("TweenService")
		local https = game:GetService("HttpService")
		
		
			
			
		function DraggableObjectf()
			local function a(b,c)local d=c.AbsoluteSize;local e=c.AbsolutePosition;local f=b.X.Scale*d.X+b.X.Offset;local g=b.Y.Scale*d.Y+b.Y.Offset;local h=math.clamp(f,0,d.X)local i=math.clamp(g,0,d.Y)local j=UDim2.new(b.X.Scale,h-b.X.Scale*d.X,b.Y.Scale,i-b.Y.Scale*d.Y)return j end;local k=UDim2.new;local l=game:GetService("UserInputService")local m=game:GetService("TweenService")local n={}n.__index=n;function n.new(o,p,q,r)local self={}self.Object=o;self.ToMove=p;self.Smooth=q;self.CallbackOnly=r;self.CanBeDragged=false;self.DragStarted=nil;self.DragEnded=nil;self.Dragged=nil;self.Dragging=false;self.LastPosition=nil;self.Velocity=Vector2.new(0,0)setmetatable(self,n)return self end;function n:Enable()self.CanBeDragged=true;local s=self.Object;local t=self.ToMove;local u=nil;local v=nil;local w=nil;local x=false;local function y(z)local A=z.Position-v;local B=UDim2.new(w.X.Scale,w.X.Offset+A.X,w.Y.Scale,w.Y.Offset+A.Y)if self.CallbackOnly then else B=a(B,self.Object:FindFirstAncestorWhichIsA("ScreenGui"))if(self.Smooth==nil or self.Smooth==true)and self.Smooth~=false then m:Create(t and t or s,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Position=B}):Play()else local C=t and t or s;C.Position=B end end;return B end;self.InputBegan=s.InputBegan:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 or z.UserInputType==Enum.UserInputType.Touch then x=true;local D;D=z.Changed:Connect(function()if z.UserInputState==Enum.UserInputState.End and(self.Dragging or x)then self.Dragging=false;D:Disconnect()if self.DragEnded and not x then self.DragEnded(self.Velocity)end;x=false end end)end end)self.InputChanged=s.InputChanged:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseMovement or z.UserInputType==Enum.UserInputType.Touch then u=z end end)self.InputChanged2=l.InputChanged:Connect(function(z)if s.Parent==nil then self:Disable()return end;if x then x=false;if self.DragStarted then self.DragStarted()end;self.Dragging=true;v=z.Position;if t then w=t.Position else w=s.Position end;self.LastPosition=z.Position end;if z==u and self.Dragging then local B=y(z)self.Velocity=z.Position-self.LastPosition;self.LastPosition=z.Position;if self.Dragged then self.Dragged(B)end end end)end;function n:Disable()self.CanBeDragged=false;self.InputBegan:Disconnect()self.InputChanged:Disconnect()self.InputChanged2:Disconnect()if self.Dragging then self.Dragging=false;if self.DragEnded then self.DragEnded(self.Velocity)end end end;return n	
		end
		local DraggableObject = DraggableObjectf()
		
		function ClickAndHoldf()
			local a={}a.__index=a;local b=game:GetService("UserInputService")function a.new(c,d)local self=setmetatable({},a)self.textButton=c;self.holdTime=d or 0.5;self.holdTask=nil;self.initialPosition=nil;self.Holded=Instance.new("BindableEvent")local function e(f,g)return math.sqrt((g.X-f.X)^2+(g.Y-f.Y)^2)end;self.textButton.MouseButton1Down:Connect(function(h,i)self.initialPosition=Vector2.new(h,i)self.holdTask=task.spawn(function()task.wait(self.holdTime)if self.holdTask then self.Holded:Fire()end end)end)b.InputChanged:Connect(function(j)if j.UserInputType==Enum.UserInputType.MouseMovement or j.UserInputType==Enum.UserInputType.Touch then if self.holdTask and self.initialPosition then local k=j.Position;local l=e(self.initialPosition,k)if l>10 then coroutine.close(self.holdTask)self.holdTask=nil end end end end)b.InputEnded:Connect(function(j)if j.UserInputType==Enum.UserInputType.MouseButton1 or j.UserInputType==Enum.UserInputType.Touch then if self.holdTask then coroutine.close(self.holdTask)self.holdTask=nil end;self.initialPosition=nil end end)return self end;return a
		end
		local ClickAndHold = ClickAndHoldf()
		function PointSavef()
			local _=false local function d(...)if _ then print("[PointSave DEBUG]:",...)end end getgenv()._FOLDERS=getgenv()._FOLDERS or{} getgenv()._FILES=getgenv()._FILES or{} isfolder=isfolder or function(_)d("Checking if folder exists:",_) return getgenv()._FOLDERS[_]~=nil end makefolder=makefolder or function(_)d("Creating folder:",_) getgenv()._FOLDERS[_]={} return getgenv()._FOLDERS[_]end isfile=isfile or function(_)d("Checking if file exists:",_) return getgenv()._FILES[_]~=nil end writefile=writefile or function(a,_)d("Writing file:",a,"with content:",_) getgenv()._FILES[a]=_ return getgenv()._FILES[a]end readfile=readfile or function(_)d("Reading file:",_) return getgenv()._FILES[_]end delfile=delfile or function(_)d("Deleting file:",_) getgenv()._FILES[_]=nil end listfiles=listfiles or function(c)d("Listing files in folder:",c) local _=getgenv()._FOLDERS[c] if _ then local a={} for b,_ in pairs(getgenv()._FILES)do if b:sub(1,#c+1)==c.."/"then local _=b:sub(#c+2) d("Found file in folder:",_) table.insert(a,_)end end return a end d("Folder does not exist:",c) return{}end local b={} b.__index=b local c="PointSaveData" local function _()if not isfolder(c)then d("Base folder not found, creating:",c) makefolder(c)else d("Base folder already exists:",c)end end function b.new(a)d("Initializing new PointSave instance for namespace:",a) _() local _=setmetatable({},b) _.namespace=a _.folderPath=c.."/"..a if not isfolder(_.folderPath)then d("Namespace folder does not exist, creating:",_.folderPath) makefolder(_.folderPath)else d("Namespace folder already exists:",_.folderPath)end return _ end function b:set(b,a)local _=self.folderPath.."/"..b..".txt" d("Setting value for key:",b,"->",a) writefile(_,tostring(a))end function b:get(a)local _=self.folderPath.."/"..a..".txt" d("Getting value for key:",a) if isfile(_)then local _=readfile(_) d("Found value for key:",a,"->",_) return _ end d("Key not found:",a) return nil end function b:remove(a)local _=self.folderPath.."/"..a..".txt" d("Removing key:",a) if isfile(_)then delfile(_) d("Removed file for key:",a)else d("File for key does not exist:",a)end end function b:clear()d("Clearing all keys in namespace:",self.namespace) local _=listfiles(self.folderPath) for _,_ in ipairs(_)do local _=self.folderPath.."/".._ if isfile(_)then d("Deleting file:",_) delfile(_)end end end function b.deleteNamespace(a)local b=c.."/"..a d("Deleting namespace:",a) local _=listfiles(b) for _,_ in ipairs(_)do local _=b.."/".._ if isfile(_)then d("Deleting file from namespace:",_) delfile(_)end end getgenv()._FOLDERS[b]=nil d("Deleted folder for namespace:",a)end function b.listNamespaces()d("Listing all namespaces") _() local b={} for a,_ in pairs(getgenv()._FOLDERS)do if a:sub(1,#c+1)==c.."/"then local _=a:sub(#c+2) d("Found namespace:",_) table.insert(b,_)end end return b end return b
		end
		local PointSave = PointSavef()
		function SBTf()
			-- Spring-based tweening module
			-- Implementation by YARHM Team, respective credits towards the original creators for spring physics
		
			local a=function()local a=function()local a={}local function b(c,d,e,f,g,h)local i=d*d-4*e/c;local j=-0.5;local k=d+math.sqrt(i)local l=d-math.sqrt(i)local m,n=j*k,j*l;local o,p=(n*f-g)/(n-m),(m*f-g)/(m-n)local q=h/e;return{Offset=function(r)return o*math.exp(m*r)+p*math.exp(n*r)+q end,Velocity=function(r)return o*m*math.exp(m*r)+p*n*math.exp(n*r)end,Acceleration=function(r)return o*m*m*math.exp(m*r)+p*n*n*math.exp(n*r)end}end;local function s(c,d,e,f,g,h)local i=-d/2;local j,k=f,g-i*f;local l=h/e;return{Offset=function(m)return math.exp(i*m)*(j+k*m)+l end,Velocity=function(m)return math.exp(i*m)*(k*i*m+j*i+k)end,Acceleration=function(m)return i*math.exp(i*m)*(k*i*m+j*i+2*k)end}end;local function t(c,d,e,f,g,h)local i=d*d-4*e/c;local j=-d/2;local k=math.sqrt(-i)local l,m=f,(g-j*f)/k;local n=h/e;return{Offset=function(o)return math.exp(j*o)*(l*math.cos(k*o)+m*math.sin(k*o))+n end,Velocity=function(o)return-math.exp(j*o)*((l*k-m*j)*math.sin(k*o)+(-m*k-l*j)*math.cos(k*o))end,Acceleration=function(o)return-math.exp(j*o)*((m*k*k+2*l*j*k-m*j*j)*math.sin(k*o)+(l*k*k-2*m*j*k-l*j*j)*math.cos(k*o))end}end;function a.F(c)local d,e,f=c.InitialOffset,c.InitialVelocity,c.ExternalForce;local g,h,i=c.Mass,c.Damping,c.Constant;local j=h*h-4*i/g;if j>0 then return b(g,h,i,d,e,f)elseif j==0 then return s(g,h,i,d,e,f)else return t(g,h,i,d,e,f)end end;return a end;local c=a()local d=math.sqrt;local e=math.pi;local f={OFFSET="Offset",VELOCITY="Velocity",ACCELERATION="Acceleration",GOAL="Goal",FREQUENCY="Frequency"}local g=""local h=""local i={}local j={}j.__index=function(k,l)local m={[f.OFFSET]=function()local m=tick()-k.StartTick;local n=k.F;local o=n.Offset(m)return o end,[f.VELOCITY]=function()local m=tick()-k.StartTick;local n=k.F;local o=n.Velocity(m)return o end,[f.ACCELERATION]=function()local m=tick()-k.StartTick;local n=k.F;local o=n.Acceleration(m)return o end,[f.GOAL]=function()local m=k.ExternalForce;local n=k.Constant;return m/n end,[f.FREQUENCY]=function()local m=k.Damping;local n=k.Constant;local o=k.Mass;return d(-m*m+4*n/o)/(2*e)end}local n=rawget(k,l)if n~=nil then return n end;local o=m[l]if o~=nil then return o()end;return j[l]end;j.__tostring=function(k)local l=tick()-k.StartTick;local m=k.F;local n=k.AdvancedObjectStringEnabled;local o;if not n then o=string.format(g,m.Offset(l),m.Velocity(l),m.Acceleration(l))else o=string.format(h,k.Mass,k.Damping,k.Constant,k.Goal,k.Frequency,k.InitialOffset,k.InitialVelocity,k.ExternalForce,k.StartTick,m.Offset(l),m.Velocity(l),m.Acceleration(l))end;return o end;function i.fromDurationAndBounce(k,l)local m=1;local n=(2*math.pi/k)^2*m;local o=2*l*math.sqrt(m*n)return{m,o,n}end;function i.new(k,l,m,n,o,p)assert(k>0,"Mass for spring system cannot be less than or equal to 0")assert(m>0,"Spring constant for spring system cannot be less than or equal to 0")n=n or 0;o=o or 0;p=p or 0;local q=p*m;local r={Mass=k,Damping=l,Constant=m,InitialOffset=n-p,InitialVelocity=o,ExternalForce=q,AdvancedObjectStringEnabled=false,StartTick=0}setmetatable(r,j)r:Reset()return r end;function i.fromFrequency(k,l,m,n,o,p)assert(k>0,"Mass for spring system cannot be less than or equal to 0")assert(m>0,"Spring frequency for spring system cannot be less than or equal to 0")local q=0.25*k*(4*e*e*m*m+l*l)n=n or 0;o=o or 0;p=p or 0;local r=p*q;local u={Mass=k,Damping=l,Constant=q,InitialOffset=n-p,InitialVelocity=o,ExternalForce=r,AdvancedObjectStringEnabled=false,StartTick=0}setmetatable(u,j)u:Reset()return u end;function j.Reset(k)k.F=c.F(k)k.StartTick=tick()end;function j.SetExternalForce(k,l)k.ExternalForce=l;k.InitialOffset=k.Offset-l/k.Constant;k.InitialVelocity=k.Velocity;k:Reset()end;function j.SetGoal(k,l)k.ExternalForce=l*k.Constant;k.InitialOffset=k.Offset-l;k.InitialVelocity=k.Velocity;k:Reset()end;function j.SetFrequency(k,l)k.Constant=0.25*k.Mass*(4*e*e*l*l+k.Damping*k.Damping)k.InitialOffset=k.Offset;k.InitialVelocity=k.Velocity;k:Reset()end;function j.SnapToCriticalDamping(k)k.Damping=2*d(k.Constant/k.Mass)k.InitialOffset=k.Offset;k.InitialVelocity=k.Velocity;k:Reset()end;function j.SetOffset(k,l,m)k.InitialOffset=l-k.Goal;k.InitialVelocity=m and 0 or k.Velocity;k:Reset()end;function j.AddOffset(k,l)k.InitialOffset=k.Offset+l;k.InitialVelocity=k.Velocity;k:Reset()end;function j.SetVelocity(k,l)k.InitialOffset=k.Offset;k.InitialVelocity=l;k:Reset()end;function j.AddVelocity(k,l)k.InitialOffset=k.Offset;k.InitialVelocity=k.Velocity+l;k:Reset()end;function j.Print(k)local l=tostring(k)print(l)end;return i end;local c=a()local d=game:GetService"RunService"local e={}e.__index=e;function e.fromDurationAndBounce(f,g)local h=1;local i=(2*math.pi/f)^2*h;local j=2*(1-g)*math.sqrt(h*i)return{h,j,i}end;local f={number=function(f,g,h,i,j)local k=c.new(h,i,j,f[g],0,f[g])return{springType="number",springSet={k},updateFunc=function()f[g]=k.Offset end,setGoal=function(l)k:SetGoal(l)end}end,UDim2=function(f,g,h,i,j)local k=c.new(h,i,j,f[g].X.Offset,0,f[g].X.Offset)local l=c.new(h,i,j,f[g].X.Scale,0,f[g].X.Scale)local m=c.new(h,i,j,f[g].Y.Offset,0,f[g].Y.Offset)local n=c.new(h,i,j,f[g].Y.Scale,0,f[g].Y.Scale)return{springType="UDim2",springSet={XOffset=k,XScale=l,YOffset=m,YScale=n},updateFunc=function()f[g]=UDim2.new(l.Offset,k.Offset,n.Offset,m.Offset)end,setGoal=function(o)k:SetGoal(o.X.Offset)l:SetGoal(o.X.Scale)m:SetGoal(o.Y.Offset)n:SetGoal(o.Y.Scale)end}end,Vector2=function(f,g,h,i,j)local k=c.new(h,i,j,f[g].X,0,f[g].X)local l=c.new(h,i,j,f[g].Y,0,f[g].Y)return{springType="Vector2",springSet={X=k,Y=l},updateFunc=function()f[g]=Vector2.new(k.Offset,l.Offset)end,setGoal=function(m)k:SetGoal(m.X)l:SetGoal(m.Y)end}end,Vector3=function(f,g,h,i,j)local k=c.new(h,i,j,f[g].X,0,f[g].X)local l=c.new(h,i,j,f[g].Y,0,f[g].Y)local m=c.new(h,i,j,f[g].Z,0,f[g].Z)return{springType="Vector3",springSet={k,l,m},updateFunc=function()f[g]=Vector3.new(k.Offset,l.Offset,m.Offset)end,setGoal=function(n)k:SetTarget(n.X)l:SetTarget(n.Y)m:SetTarget(n.Z)end}end}function e.new(g,h,i,j,k)assert(g[h],"Property does not exist on object")local l=typeof(g[h])local m=f[l]if m then local n=setmetatable({},e)n.obj=g;n.propertyName=h;n.updater=nil;local o=m(g,h,i,j,k)n.springType=o.springType;n.springSet=o.springSet;n.updateFunc=o.updateFunc;n.setGoal=o.setGoal;return n else error("Type not supported: "..l)end end;function e.Start(g)if g.updater then return end;for h,i in pairs(g.springSet)do i:Reset()end;g.updater=d.RenderStepped:Connect(function(h)g.updateFunc()end)end;function e.Stop(g)if g.updater then g.updater:Disconnect()g.updater=nil end end;function e.SetGoal(g,h)g.setGoal(h)end;function e.SetParameters(g,h,i,j)for k,l in pairs(g.springSet)do l.Mass=h;l.Stiffness=i;l.Damping=j;l:Reset()end end;return e
		end
		local SBT = SBTf()
		
		
		
		local YARHMPointSave = PointSave.new("YARHM")
		
		local States = {}
		local toggleStates = {}
		local rangeValueStates = {}
		local AREA = script.Parent.Menu.Area.Area
		local AREACONTAINER = script.Parent.Menu.Area
		
		local AREAModuleSelected = nil
		
		local fBSF = script.Parent.FloatingButtonSetting
		
		local adState = false
		
		local function calculateWidth(n)
			if n <= 3 then
				return 30
			else
				local base = 30
				local additional = math.floor((n - 3) / 3) * 30
				return base + additional
			end
		end
		local function udim2Serializer(value)
			if typeof(value) == "UDim2" then
				return string.format("%g,%g,%g,%g", value.X.Scale, value.X.Offset, value.Y.Scale, value.Y.Offset)
			elseif typeof(value) == "string" then
				local xScale, xOffset, yScale, yOffset = string.match(value, "([^,]+),([^,]+),([^,]+),([^,]+)")
				assert(xScale and xOffset and yScale and yOffset, "Invalid UDim2 string format")
				return UDim2.new(tonumber(xScale), tonumber(xOffset), tonumber(yScale), tonumber(yOffset))
			end
		end
		local function lrp(a,b,t)
			return a + (b - a) * t
		end
		function roundNumber(num, numDecimalPlaces)
			return tonumber(string.format("%." .. numDecimalPlaces .. "f", num))
		end
		
		FUNCTIONSmodule.theme = {
			font = Enum.Font.Montserrat,
			textColor = Color3.fromRGB(255, 255, 255),
			accentColor = Color3.fromRGB(197, 0, 0),
			primaryColor = Color3.fromRGB(22, 22, 22),
			secondaryColor = Color3.fromRGB(12, 12, 12),
		
			backgroundColorCSQ = ColorSequence.new(Color3.fromRGB(36, 36, 36), Color3.fromRGB(68, 68, 68)),	
			strokeColorCSQ = ColorSequence.new{
				ColorSequenceKeypoint.new(0, Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)),
				ColorSequenceKeypoint.new(0.15224914252758026, Color3.fromRGB(50.69031357765198, 50.69031357765198, 50.69031357765198)),
				ColorSequenceKeypoint.new(0.4723183512687683, Color3.fromRGB(255, 0, 4.000000236555934)),
				ColorSequenceKeypoint.new(0.7577854990959167, Color3.fromRGB(50.13314567506313, 50.13314567506313, 50.13314567506313)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(48.000000938773155, 48.000000938773155, 48.000000938773155))
			},
		}
		
		function FUNCTIONSmodule.getTheme()
			if getgenv then
				return getgenv().YARHM_THEME or FUNCTIONSmodule.theme
			else
				return FUNCTIONSmodule.theme
			end
		end
		function FUNCTIONSmodule.setTheme(t)
			FUNCTIONSmodule.theme = t
			if getgenv then getgenv().YARHM_THEME = t end
		end
		
		local floatingButtonObjects = {}
		local floatingButtonInvisibility = {}
		local floatingButtonDraggers = {}
		local floatingButtonKeybinds = {}
		local floatingButtonConnections = {}
		
		local fBSFResizeDragger = nil
		getgenv().fBSFButton = nil
		getgenv().fBSFRealButton = nil
		getgenv().fBSF_ButtonDragger = nil
		
		local selected = Instance.new("ObjectValue")
		
		selected.Parent = script.Parent
		selected.Name = "Selected"
		
		local icons = {
			info = "rbxassetid://11780939099",
			x = "rbxassetid://10002373478",
			cross = "rbxassetid://10002373478",
			check = "rbxassetid://11604833061"
		}
		
		
		incomingNotif = false
		
		function FUNCTIONSmodule.to_base64(data)
			local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
			return ((data:gsub('.', function(x) 
				local r,b='',x:byte()
				for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
				return r;
			end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
				if (#x < 6) then return '' end
				local c=0
				for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
				return b:sub(c+1,c+1)
			end)..({ '', '==', '=' })[#data%3+1])
		end
		
		function FUNCTIONSmodule.from_base64(data)
			local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
			data = string.gsub(data, '[^'..b..'=]', '')
			return (data:gsub('.', function(x)
				if (x == '=') then return '' end
				local r,f='',(b:find(x)-1)
				for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
				return r;
			end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
				if (#x ~= 8) then return '' end
				local c=0
				for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
				return string.char(c)
			end))
		end
		
		function FUNCTIONSmodule.notification(s, color, icon)
			incomingNotif = true
			task.spawn(function()
				s = tostring(s)
				local notif = script.Parent.NotificationSample:Clone()
				notif.Parent = script.Parent
				notif.Position = UDim2.fromScale(0.5, -0.1)
				notif.UIScale.Scale = 0.5
				notif.Visible = true
				notif.Name = s
		
				if color and typeof(icon) == "Color3" then
					notif.UIStroke.Color = color
					notif.ImageLabel.ImageColor3 = color
				end
		
				if icon then
					if icons[icon] then notif.ImageLabel.Image = icons[icon] else
						if tonumber(icon) then
							notif.ImageLabel.Image = "rbxassetid://" .. tonumber(icon)
						else
							notif.ImageLabel.Image = icon
						end
					end
				end
		
				notif.TextLabel.MaxVisibleGraphemes = 0
				notif.TextLabel.Text = s
				notif:SetAttribute("close", false)
				ts:Create(notif, TweenInfo.new(0.7, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
					Position = UDim2.new(0.5, 0, 0, 10)
				}):Play()
		
				ts:Create(notif.UIScale, TweenInfo.new(0.8, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
					Scale = 0.8
				}):Play()
		
				ts:Create(notif.TextLabel, TweenInfo.new(0.7, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
					MaxVisibleGraphemes = #s
				}):Play()
		
				notif.Close.MouseButton1Click:Connect(function()
					notif:SetAttribute("close", true)
				end)
		
				task.wait()
				incomingNotif = false
				local lastclock = os.clock()
				repeat task.wait() until os.clock()-lastclock > 5 or incomingNotif or notif:GetAttribute("close")
		
				local finish = ts:Create(notif, TweenInfo.new(0.3, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
					Position = UDim2.fromScale(0.5, -0.1)
				})
				finish:Play()
				finish.Completed:Connect(function()
					notif:Destroy()
				end)
			end)
		end
		
		local lockMode = false
		function FUNCTIONSmodule.lockModeSet(s)
			lockMode = s
		end
		
		function FUNCTIONSmodule.closeFinetuneFB()
			for _, b in ipairs(script.Parent.FloatingButtons:GetChildren()) do
				if b:IsA("TextButton") and b:FindFirstChildWhichIsA("UIScale") then
					local buttonScale = b:FindFirstChildWhichIsA("UIScale")
					ts:Create(buttonScale, TweenInfo.new(0.3), {
						Scale = 1
					}):Play()
				end
			end
		
			local buttonScale = getgenv().fBSFButton:FindFirstChildWhichIsA("UIScale") or Instance.new("UIScale", getgenv().fBSFButton)
			ts:Create(buttonScale, TweenInfo.new(0.3), {
				Scale = 0
			}):Play()
			ts:Create(fBSF, TweenInfo.new(0.3), {
				BackgroundTransparency = 1
			}):Play()
			local done = ts:Create(fBSF.ControlBarContainer.UIScale, TweenInfo.new(0.3), {
				Scale = 0
			})
			done:Play()
			done.Completed:Wait()
			--for _, b in ipairs(script.Parent.FloatingButtons:GetChildren()) do
			--	if b:FindFirstChildWhichIsA("UIScale") then
			--		b:FindFirstChildWhichIsA("UIScale"):Destroy()
			--	end
			--end
			getgenv().fBSFButton:Destroy()
			fBSF.Visible = false
		
			getgenv().fBSFButton = nil
			getgenv().fBSFRealButton = nil
			getgenv().fBSF_ButtonDragger = nil
		end
		
		function FUNCTIONSmodule.finetuneFloatingButton(button: TextButton, dragger)
			if getgenv().fBSFRealButton then return end
			getgenv().fBSFRealButton = button
			for _, b in ipairs(script.Parent.FloatingButtons:GetChildren()) do
				if b:IsA("TextButton") and b:FindFirstChildWhichIsA("UIScale") then
					local buttonScale = b:FindFirstChildWhichIsA("UIScale")
					ts:Create(buttonScale, TweenInfo.new(0.3), {
						Scale = 0
					}):Play()
				end
			end
		
			local finetuningButton = button:Clone()
			getgenv().fBSFButton = finetuningButton
			finetuningButton.Parent = fBSF
			finetuningButton.Name = "fBSFButton"
			finetuningButton.AnchorPoint = Vector2.new(0, 0)
			finetuningButton.Position = UDim2.fromOffset(button.AbsolutePosition.X, button.AbsolutePosition.Y + game:GetService("GuiService"):GetGuiInset().Y)
		
			fBSFResizeDragger = DraggableObject.new(finetuningButton, nil, nil, true)
		
			getgenv().fBSF_ButtonDragger = dragger
			local startingSize = finetuningButton.Size
			fBSFResizeDragger.DragStarted = function()
				startingSize = finetuningButton.Size
			end
			fBSFResizeDragger.Dragged = function(pos)
				local newSize =  UDim2.fromOffset(math.clamp(startingSize.X.Offset + pos.X.Offset, 30, 500), math.clamp(startingSize.Y.Offset + pos.Y.Offset, 10, 350))
				ts:Create(finetuningButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Size = newSize
				}):Play()
				button.Size = newSize
				YARHMPointSave:set(string.gsub(button.Name, "_", ""), udim2Serializer(button.Position) .. "|" .. udim2Serializer(button.Size) .. "|" .. tostring(button.Visible) .. "|" .. tostring(dragger.CanBeDragged))
			end
			fBSFResizeDragger:Enable()
		
			fBSF.ControlBarContainer.UIScale.Scale = 0
			fBSF.BackgroundTransparency = 1
			fBSF.Visible = true
			ts:Create(fBSF, TweenInfo.new(0.3), {
				BackgroundTransparency = 0.5
			}):Play()
			ts:Create(fBSF.ControlBarContainer.UIScale, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
				Scale = 1
			}):Play()
			ts:Create(finetuningButton, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5)
			}):Play()
		
			if finetuningButton.BackgroundTransparency == 1 then
				finetuningButton.Lock.TextTransparency = 0
				ts:Create(finetuningButton, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					BackgroundTransparency = 0.5,
					TextTransparency = 0.5
				}):Play()
				ts:Create(finetuningButton.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					Transparency = 0.5
				}):Play()
			end
		
			
		end
		
		function FUNCTIONSmodule.ftToggleLock()
			if getgenv().fBSF_ButtonDragger.CanBeDragged then
				getgenv().fBSF_ButtonDragger:Disable()
				getgenv().fBSFRealButton.Lock.UIScale.Scale = 1
				ts:Create(getgenv().fBSFButton.Lock.UIScale, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
					Scale = 1
				}):Play()
			else
				getgenv().fBSF_ButtonDragger:Enable()
				getgenv().fBSFRealButton.Lock.UIScale.Scale = 0
				ts:Create(getgenv().fBSFButton.Lock.UIScale, TweenInfo.new(0.3), {
					Scale = 0
				}):Play()
			end
			YARHMPointSave:set(string.gsub(getgenv().fBSFRealButton.Name, "_", ""), udim2Serializer(getgenv().fBSFRealButton.Position) .. "|" .. udim2Serializer(getgenv().fBSFRealButton.Size) .. "|" .. tostring(getgenv().fBSFRealButton.Visible) .. "|" .. tostring(getgenv().fBSF_ButtonDragger.CanBeDragged))
		end
		
		function FUNCTIONSmodule.ftToggleVisibility()
			if getgenv().fBSFButton.BackgroundTransparency == 0 then
				getgenv().fBSFRealButton.BackgroundTransparency = 1
				getgenv().fBSFRealButton.TextTransparency = 1
				getgenv().fBSFRealButton.UIStroke.Transparency = 1
				getgenv().fBSFRealButton.Lock.TextTransparency = 1
		
				ts:Create(getgenv().fBSFButton, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					BackgroundTransparency = 0.5,
					TextTransparency = 0.5
				}):Play()
				ts:Create(getgenv().fBSFButton.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					Transparency = 0.5
				}):Play()
			else
				getgenv().fBSFRealButton.BackgroundTransparency = 0
				getgenv().fBSFRealButton.TextTransparency = 0
				getgenv().fBSFRealButton.UIStroke.Transparency = 0
				getgenv().fBSFRealButton.Lock.TextTransparency = 0
		
				ts:Create(getgenv().fBSFButton, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					BackgroundTransparency = 0,
					TextTransparency = 0
				}):Play()
				ts:Create(getgenv().fBSFButton.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					Transparency = 0
				}):Play()
			end
			YARHMPointSave:set(string.gsub(getgenv().fBSFRealButton.Name, "_", ""), udim2Serializer(getgenv().fBSFRealButton.Position) .. "|" .. udim2Serializer(getgenv().fBSFRealButton.Size) .. "|" .. tostring(getgenv().fBSFRealButton.Visible) .. "|" .. tostring(getgenv().fBSF_ButtonDragger.CanBeDragged))
		end
		
		function FUNCTIONSmodule.createFloatingButton(item,button,buttonname,fromload)
			if not getgenv().YARHM.FloatingButtons:FindFirstChild(string.gsub(buttonname, "_", "")) then
				
				
				local UserInputService = game:GetService("UserInputService")
				if not fromload then
					YARHMPointSave:set(string.gsub(buttonname, "_", ""), udim2Serializer(UDim2.fromOffset(125, 90)) .. "|" .. udim2Serializer(UDim2.fromOffset(200,50)) .. "|true|true")
				end
		
				local newFloatingButton = getgenv().YARHM.FloatingButton:Clone()
				newFloatingButton.Parent = getgenv().YARHM.FloatingButtons
				
				newFloatingButton.Name = string.gsub(buttonname, "_", "")
				newFloatingButton.Text = string.gsub(buttonname, "_", " ")
				
				newFloatingButton.BackgroundColor3 = FUNCTIONSmodule.getTheme().primaryColor
				local themedColor = Instance.new("StringValue", newFloatingButton)
				themedColor.Name = "themedColor"
				themedColor.Value = "primaryColor"
				newFloatingButton.Visible = true
				
				newFloatingButton.Font = Enum.Font.Montserrat
		
				table.insert(floatingButtonObjects, newFloatingButton)
				local floatingButtonObjectSelf = floatingButtonObjects[#floatingButtonObjects]
		
				newFloatingButton.MouseButton1Click:Connect(function()
					if typeof(item["Args"][2]) == "function" then
						item["Args"][2](button)
					else
						item["Args"][2][buttonname](button)
					end
				end)
				
				local ripple
				
				newFloatingButton.MouseButton1Down:Connect(function(x, y)
					ts:Create(newFloatingButton.UIScale, TweenInfo.new(0.1), {
						Scale = 0.95
					}):Play()
					
					
					ripple = newFloatingButton.Ripple:Clone()
					ripple.BackgroundColor3 = FUNCTIONSmodule.getTheme().textColor
					ripple.Parent = newFloatingButton
					ripple.Position = UDim2.fromOffset(x - newFloatingButton.AbsolutePosition.X, (y - newFloatingButton.AbsolutePosition.Y) - game:GetService("GuiService"):GetGuiInset().Y)
					ts:Create(ripple, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
						BackgroundTransparency = 0.6,
						Size = UDim2.fromOffset(50, 50)
					}):Play()
				end)
				
				
				local function closeRipple()
					if not getgenv().fBSFRealButton then
						ts:Create(newFloatingButton.UIScale, TweenInfo.new(0.1), {
							Scale = 1
						}):Play()
					end
		
					if ripple then
						task.spawn(function()
							local rippleToRemove = ripple
							local fade = ts:Create(rippleToRemove, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
								BackgroundTransparency = 1,
								Size = UDim2.fromOffset(150, 150)
							})
							fade:Play()
							fade.Completed:Once(function()
								rippleToRemove:Destroy()
							end)
						end)
					end
				end
				UserInputService.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
						closeRipple()
					end
				end)
				
				local shouldBeDraggable = true
				if not fromload then
					newFloatingButton.Position = UDim2.fromOffset(-125, 90)
				elseif YARHMPointSave:get(string.gsub(buttonname, "_", "")) then
					local data = YARHMPointSave:get(string.gsub(buttonname, "_", "")):split("|")
					newFloatingButton.Position = udim2Serializer(data[1])
					ts:Create(newFloatingButton, TweenInfo.new(2, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
						Size = udim2Serializer(data[2])
					}):Play()
					newFloatingButton.Visible = (data[3] == "true")
					if data[4] == "false" then
						newFloatingButton.Lock.UIScale.Scale = 1
						shouldBeDraggable = false
					end
				end
		
				task.spawn(function()
					if not fromload then
						ts:Create(newFloatingButton, TweenInfo.new(2, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
							Size = UDim2.fromOffset(200, 50)
						}):Play()
						ts:Create(newFloatingButton, TweenInfo.new(0.7, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
							Position = UDim2.fromOffset(125, 90)
						}):Play()
					end
				end)
		
				floatingButtonDraggers[string.gsub(buttonname, "_", "")] = DraggableObject.new(newFloatingButton)
				if shouldBeDraggable then
					floatingButtonDraggers[string.gsub(buttonname, "_", "")]:Enable()
				end
				floatingButtonDraggers[string.gsub(buttonname, "_", "")].Dragged = function(newPos)
					YARHMPointSave:set(string.gsub(buttonname, "_", ""), udim2Serializer(newPos) .. "|" .. udim2Serializer(newFloatingButton.Size) .. "|" .. tostring(newFloatingButton.Visible) .. "|" .. tostring(floatingButtonDraggers[string.gsub(buttonname, "_", "")].CanBeDragged))
				end
		
				local holder = ClickAndHold.new(newFloatingButton)
				holder.Holded.Event:Connect(function()
					if floatingButtonDraggers[string.gsub(buttonname, "_", "")].Dragging then return end
					if ripple then
						ripple:Destroy()
					end
					FUNCTIONSmodule.finetuneFloatingButton(floatingButtonObjectSelf, floatingButtonDraggers[string.gsub(buttonname, "_", "")])
				end)
		
				newFloatingButton.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton2 then
						FUNCTIONSmodule.notification("Press a key to bind " .. string.gsub(buttonname, "_", "") .. " to...")
						local keytobind
						local result
						repeat
							result = UserInputService.InputBegan:Wait()
							if result.UserInputType == Enum.UserInputType.Keyboard then keytobind = result.KeyCode end
						until keytobind
		
						FUNCTIONSmodule.notification(string.gsub(buttonname, "_", "") .. " binded to key " .. result.KeyCode.Name .. "!")
						task.wait(0.1) floatingButtonKeybinds[string.gsub(buttonname, "_", "")] = keytobind	
					end
				end)
		
				local uis = game:GetService("UserInputService")
				if uis.KeyboardEnabled and uis.MouseEnabled then
					floatingButtonConnections[string.gsub(buttonname, "_", "")] = uis.InputBegan:Connect(function(inp, processed)
						if processed then return end
						if inp.KeyCode == floatingButtonKeybinds[string.gsub(buttonname, "_", "")] then
							if typeof(item["Args"][2]) == "function" then
								item["Args"][2](button)
							else
								item["Args"][2][buttonname](button)
							end
						end
					end)
				end
		
			else
				floatingButtonKeybinds[string.gsub(buttonname, "_", "")] = nil
				if floatingButtonConnections[string.gsub(buttonname, "_", "")] then
					floatingButtonConnections[string.gsub(buttonname, "_", "")]:Disconnect()
				end
				YARHMPointSave:remove(string.gsub(buttonname, "_", ""))
				task.spawn(function()
					local buttontodestroy = getgenv().YARHM.FloatingButtons:FindFirstChild(string.gsub(buttonname, "_", ""))
					local btdtween = ts:Create(buttontodestroy, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
						Size = UDim2.new(0,0,0,0)
					})
					btdtween:Play()
					btdtween.Completed:Wait()
					buttontodestroy:Destroy()
				end)
			end
		end
		
		function FUNCTIONSmodule.loadFloatingButtons()
			repeat task.wait() until getgenv().Modules
			for _, module in ipairs(getgenv().Modules) do
				for _, item in ipairs(module) do
					if item["Type"] == "Button" then
						local key = string.gsub(item["Args"][1], "_", "")
						local saved = YARHMPointSave:get(key)
						-- only auto-restore if it was explicitly saved by user (not startup)
					end
				end
			end
		end
		
		
		
		function FUNCTIONSmodule.loader(module)
			--local unloadtween = ts:Create(AREA, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			--	Position = UDim2.fromScale(1.55, 0.606)
			--})
		
			--unloadtween:Play()
			--unloadtween.Completed:Wait()
		
		
			local AREAframes = {}
			for _, i in ipairs(AREA:GetChildren()) do if i:IsA("Frame") then table.insert(AREAframes, i) end end
			if #AREAframes > 5 then
				ts:Create(AREA, TweenInfo.new(0.1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), { CanvasPosition = Vector2.zero }):Play()
				for i=1, math.min(7, #AREAframes) do
					task.wait(0.01)
					ts:Create(AREAframes[i]:GetChildren()[1], TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
						Position = UDim2.fromScale(2, 0)
					}):Play()
				end
				task.wait(0.18)
			end
		
			AREA:ClearAllChildren()
			
			if not adState then
				adState = true
				ts:Create(script.Parent.Menu.Ad, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					AnchorPoint = Vector2.new(1,0),
					Position = UDim2.fromScale(1,0),
					Size = UDim2.new(0.68, 0, 0.18, 0)
				}):Play()
				
				ts:Create(script.Parent.Menu.Ad.UICorner, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					BottomLeftRadius = UDim.new(0, 8),
					BottomRightRadius = UDim.new(0, 0),
					TopLeftRadius = UDim.new(0, 0),
					TopRightRadius = UDim.new(0, 16)
				}):Play()
			end
			
			
			local listlayout = Instance.new("UIListLayout")
			listlayout.Parent = AREA
			listlayout.Padding = UDim.new(0, 16)
			listlayout.FillDirection = Enum.FillDirection.Vertical
			listlayout.SortOrder = Enum.SortOrder.LayoutOrder
			listlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			
			
			for _, item in ipairs(module) do
				local frameHolder = Instance.new("Frame")
				frameHolder.Name = "Holder"
				frameHolder.BackgroundTransparency = 1
				frameHolder.Size = UDim2.new(1,0,0,0)
				frameHolder.AutomaticSize = Enum.AutomaticSize.XY
				frameHolder.Parent = AREA
		
				if item["Type"] == "Text" then
		
					local text = Instance.new("TextLabel")
					text.Parent = frameHolder
		
					text.BackgroundTransparency = 1
					text.Text = item["Args"][1]
					text.TextScaled = true
					text.TextColor3 = FUNCTIONSmodule.getTheme().textColor
					text.Font = Enum.Font.GothamBold
					text.Size = UDim2.new(1,0,0,20)
					text.TextXAlignment = item["Args"][2] == "center" and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left
					text.RichText = true
		
		
				elseif item["Type"] == "Button" then
					
					local button = getgenv().YARHM.MenuButton:Clone()
					button.Visible = true
					
					button.Parent = frameHolder
					button.BackgroundColor3 = FUNCTIONSmodule.getTheme().primaryColor
					button.Text = item["Args"][1]
					button.TextColor3 = FUNCTIONSmodule.getTheme().textColor
		
					--local button = Instance.new("TextButton")
					--button.Parent = frameHolder
		
					--button.BackgroundColor3 = FUNCTIONSmodule.getTheme().primaryColor
					--button.Text = item["Args"][1]
					--button.TextScaled = true
					--button.TextColor3 = FUNCTIONSmodule.getTheme().textColor
					--button.Font = Enum.Font.GothamBold
					--button.Size = UDim2.new(1,0,0,25)
		
					--local padding = Instance.new("UIPadding")
					--padding.Parent = button
		
					--padding.PaddingTop = UDim.new(0, 5)
					--padding.PaddingBottom = UDim.new(0, 5)
		
		
					--Instance.new("UICorner", button).CornerRadius = UDim.new(1, 0)
		
					local hold = false
		
					button.MouseButton1Click:Connect(function()
						item["Args"][2](button)
					end)
					
					local cah = ClickAndHold.new(button, 0.5)
					cah.Holded.Event:Connect(function()
						FUNCTIONSmodule.createFloatingButton(item, button, item["Args"][1])
					end)
		
					
				elseif item["Type"] == "ButtonGrid" then
		
		
		
		
					local frame = Instance.new("Frame")
					frame.Parent = frameHolder
					frame.Size = UDim2.new(1, 0, 0, 0)
					frame.AutomaticSize = Enum.AutomaticSize.Y
					frame.BackgroundTransparency = 1
		
		
					local gridlayout = Instance.new("UIGridLayout")
					gridlayout.Parent = frame
					gridlayout.CellSize = UDim2.new((1 / item["Args"][1]) - 0.03, 0, 0, 30) -- remove 0.03 because if not it would wrap on its own lol
		
					--print("------")
					--print(item["Args"][2])
					--print(States)
					for buttonname, args in item["Args"][2] do
						local button = Instance.new("TextButton")
						button.Parent = frame
		
						--print(args)
						button.BackgroundColor3 = FUNCTIONSmodule.getTheme().primaryColor
						if States[buttonname .. module.Name] then
							button.BackgroundColor3 = FUNCTIONSmodule.getTheme().accentColor
						end
						button.Text = string.gsub(buttonname, "_", " ")
						button.TextScaled = true
						button.TextColor3 = FUNCTIONSmodule.getTheme().textColor
						button.Font = Enum.Font.GothamBold
		
						local padding = Instance.new("UIPadding")
						padding.Parent = button
		
						padding.PaddingTop = UDim.new(0, 5)
						padding.PaddingBottom = UDim.new(0, 5)
						padding.PaddingLeft = UDim.new(0, 8)
						padding.PaddingRight = UDim.new(0, 8)
		
						Instance.new("UICorner", button).CornerRadius = UDim.new(1, 0)
		
						button.MouseButton1Click:Connect(function()
							if item["Toggleable"] then
								item["Args"][2][buttonname](button)
								--print(States[buttonname .. module.Name])
								if States[buttonname .. module.Name] then
									ts:Create(button, TweenInfo.new(0.3), {
										BackgroundColor3 = FUNCTIONSmodule.getTheme().primaryColor
									}):Play()
									States[buttonname .. module.Name] = false
								else
									ts:Create(button, TweenInfo.new(0.3), {
										BackgroundColor3 = FUNCTIONSmodule.getTheme().accentColor
									}):Play()
									States[buttonname .. module.Name] = true
								end
							else
								item["Args"][2][buttonname](button)
							end
						end)
		
						local cah = ClickAndHold.new(button, 0.5)
						cah.Holded.Event:Connect(function()
							FUNCTIONSmodule.createFloatingButton(item, button, buttonname)
						end)
					end
		
		
				elseif item["Type"] == "Input" then
					local cloneinput = getgenv().YARHM.TextBoxPlaceholder:Clone()
					cloneinput.Parent = frameHolder
					cloneinput.Visible = true
					
					cloneinput.TextBox.PlaceholderText = item["Args"][1]
					cloneinput.TextButton.Text = item["Args"][2]
					
					cloneinput.TextBox.TextColor3 = FUNCTIONSmodule.getTheme().textColor
					cloneinput.TextButton.TextColor3 = FUNCTIONSmodule.getTheme().textColor
					
					cloneinput.TextBox.BackgroundColor3 = FUNCTIONSmodule.getTheme().primaryColor
					cloneinput.TextButton.BackgroundColor3 = FUNCTIONSmodule.getTheme().primaryColor
		
		
					cloneinput.TextButton.MouseButton1Click:Connect(function()
						item["Args"][3](cloneinput.TextButton, cloneinput.TextBox.Text)
					end)
				elseif item["Type"] == "Toggle" then
					local clonetoggle = getgenv().YARHM.Toggle:Clone()
					clonetoggle.Parent = frameHolder
					clonetoggle.Visible = true
		
					clonetoggle.TextLabel.Text = item["Args"][1]
					clonetoggle.TextLabel.TextColor3 = FUNCTIONSmodule.getTheme().textColor
					clonetoggle.TextLabel.Font = Enum.Font.Montserrat
		
		
		
					local clonetoggletoggler = clonetoggle.Frame.Frame.Toggler
					
					clonetoggletoggler.ImageLabel.Image = "rbxassetid://5959696880"
					clonetoggletoggler.ImageLabel.ImageTransparency = 1
					
					clonetoggletoggler.ImageLabel.ImageColor3 = FUNCTIONSmodule.getTheme().accentColor
					clonetoggletoggler.Parent.BackgroundColor3 = FUNCTIONSmodule.getTheme().secondaryColor
					
					if toggleStates[item["Args"][1] .. module.Name] then
						clonetoggletoggler.Position = UDim2.fromScale(1, 0.5)
						clonetoggletoggler.AnchorPoint = Vector2.new(1, 0.5)
						clonetoggletoggler.ImageLabel.ImageTransparency = 0
					end
		
					clonetoggletoggler.MouseButton1Click:Connect(function()
						if toggleStates[item["Args"][1] .. module.Name] then
							toggleStates[item["Args"][1] .. module.Name] = false
							ts:Create(clonetoggletoggler, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
								Position = UDim2.fromScale(0, 0.5),
								AnchorPoint = Vector2.new(0, 0.5)
							}):Play()
							ts:Create(clonetoggletoggler.ImageLabel, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
								ImageTransparency = 1
							}):Play()
						else
							toggleStates[item["Args"][1] .. module.Name] = true
							ts:Create(clonetoggletoggler, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
								Position = UDim2.fromScale(1, 0.5),
								AnchorPoint = Vector2.new(1, 0.5)
							}):Play()
							ts:Create(clonetoggletoggler.ImageLabel, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
								ImageTransparency = 0
							}):Play()
						end
						item["Args"][2](clonetoggletoggler, toggleStates[item["Args"][1] .. module.Name])
					end)
				elseif item["Type"] == "Dropdown" then	
					local clonedropdown = getgenv().YARHM.Dropdown:Clone()
					local dropdownFrame = getgenv().YARHM.DropdownFrameSample
					clonedropdown.Parent = frameHolder
					clonedropdown.Visible = true
		
					clonedropdown.TextLabel.Text = item["Args"][1]
					clonedropdown.Frame.MouseButton1Click:Connect(function()
						for _, v in ipairs(dropdownFrame.ScrollingFrame:GetChildren()) do if v:IsA("TextButton") and v.Name ~= "Sample" then v:Destroy() end end
						local mouse = game.Players.LocalPlayer:GetMouse()
						dropdownFrame.Position = UDim2.fromOffset(mouse.X, mouse.Y - 55)
						dropdownFrame.Size = UDim2.new(0,108/2,0,0)
						dropdownFrame.Visible = true
						ts:Create(dropdownFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
							Size = UDim2.fromOffset(108, 239)
						}):Play()
		
						local items
						if typeof(item["Args"][2]) == "function" then
							items = item["Args"][2]()
						else
							items = item["Args"][2]
						end
		
						for _, v in ipairs(items) do
							local clonedropdownbutton = dropdownFrame.ScrollingFrame.Sample:Clone()
							clonedropdownbutton.Parent = dropdownFrame.ScrollingFrame
							clonedropdownbutton.Name = v
							clonedropdownbutton.Visible = true
							clonedropdownbutton.Text = v
							clonedropdownbutton.MouseButton1Click:Connect(function()
								--dropdownFrame.Visible = false
								clonedropdown.Frame.Text = v
								item["Args"][3](clonedropdown.Frame, v)
								local after = ts:Create(dropdownFrame, TweenInfo.new(0.1, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
									Size = UDim2.fromOffset(108/2, 0)
								})
								after:Play()
								after.Completed:Once(function()
									dropdownFrame.Visible = false
								end)
							end)
						end
					end)
				elseif item["Type"] == "Range" then
					local clonerange = getgenv().YARHM.Range:Clone()
					clonerange.Parent = frameHolder
					clonerange.Visible = true
		
					clonerange.TextLabel.Text = item["Args"][1]
					clonerange.TextLabel.TextColor3 = FUNCTIONSmodule.getTheme().textColor
					clonerange.TextLabel.Font = Enum.Font.Montserrat
					
					clonerange.Frame.Track.Ball.BackgroundColor3 = FUNCTIONSmodule.getTheme().accentColor
					clonerange.Frame.Track.BackgroundColor3 = FUNCTIONSmodule.getTheme().secondaryColor
					
					if not rangeValueStates[item["Args"][1] .. module.Name] then
						rangeValueStates[item["Args"][1] .. module.Name] = item["Args"][2]
					end
					clonerange.Frame.Track.Ball.Size = UDim2.new(lrp(0.06, 1, rangeValueStates[item["Args"][1] .. module.Name] / item["Args"][3]), 0, 1, 0)
		
					local slider = DraggableObject.new(clonerange.Frame, nil, false, true)
					slider:Enable()
					
					local relativeSlide = nil
					slider.Dragged = function(pos: UDim2)
						if not relativeSlide then relativeSlide = pos end
						local dragDistance = pos - relativeSlide
						
						local resolvedVal = rangeValueStates[item["Args"][1] .. module.Name]
						local deltaChange = dragDistance.X.Offset
						if math.abs(deltaChange) * 2 > item["Args"][4] then
							resolvedVal = math.clamp(resolvedVal + deltaChange, 0, item["Args"][3])
							relativeSlide = pos
							
							if item["Args"][4] > 1 then
								resolvedVal = math.round(resolvedVal)
							end
							
							rangeValueStates[item["Args"][1] .. module.Name] = resolvedVal
						end
						
						clonerange.Frame.Track.Ball.Size = UDim2.new(lrp(0.06, 1, resolvedVal / item["Args"][3]), 0, 1, 0)
		
						
						
						clonerange.Frame.Track.Ball.BallProgress.Text = roundNumber(resolvedVal, 2)
						clonerange.Frame.Track.TrackProgress.Text = tostring(resolvedVal, 2)
						if resolvedVal > item["Args"][3] / 2 then
							ts:Create(clonerange.Frame.Track.Ball.BallProgress, TweenInfo.new(0.2), {
								TextTransparency = 0,
								TextStrokeTransparency = 0
							}):Play()
							ts:Create(clonerange.Frame.Track.TrackProgress, TweenInfo.new(0.2), {
								TextTransparency = 1,
								TextStrokeTransparency = 1
							}):Play()
						else
							ts:Create(clonerange.Frame.Track.Ball.BallProgress, TweenInfo.new(0.2), {
								TextTransparency = 1,
								TextStrokeTransparency = 1
							}):Play()
							ts:Create(clonerange.Frame.Track.TrackProgress, TweenInfo.new(0.2), {
								TextTransparency = 0,
								TextStrokeTransparency = 0
							}):Play()
						end
						
						rangeValueStates[item["Args"][1] .. module.Name] = resolvedVal
						
						if item["Args"][5] then
							item["Args"][5](clonerange, resolvedVal)
						end
					end
					
					slider.DragEnded = function()
						relativeSlide = nil
						ts:Create(clonerange.Frame.Track.Ball.BallProgress, TweenInfo.new(0.2), {
							TextTransparency = 1,
							TextStrokeTransparency = 1
						}):Play()
						ts:Create(clonerange.Frame.Track.TrackProgress, TweenInfo.new(0.2), {
							TextTransparency = 1,
							TextStrokeTransparency = 1
						}):Play()
					end
		
						
				end
				
		
		
			end
			
			--if AREACONTAINER:FindFirstChildWhichIsA("UIListLayout") then
			--	AREACONTAINER:FindFirstChildWhichIsA("UIListLayout"):Destroy()
			--end -- idk where this instance coming from sorry
			AREACONTAINER.Area.Position = UDim2.fromScale(0.5, 0.5)
			ts:Create(AREACONTAINER.Area, TweenInfo.new(0.6, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
				Position = UDim2.fromScale(0.5, 0.5)
			}):Play()
		
			ts:Create(listlayout, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
				Padding = UDim.new(0, 7)
			}):Play()
			local AREAframes = {}
			for _, i in ipairs(AREA:GetChildren()) do if i:IsA("Frame") then table.insert(AREAframes, i) end end
			if #AREAframes > 5 then
				for i=1, math.min(7, #AREAframes) do AREAframes[i]:GetChildren()[1].Position = UDim2.fromScale(-1, 0) end
				ts:Create(AREA, TweenInfo.new(0.1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), { CanvasPosition = Vector2.zero }):Play()
				for i=1, math.min(7, #AREAframes) do
					task.wait(0.02)
					task.spawn(function()
						local springEnter = SBT.new(AREAframes[i]:GetChildren()[1], "Position", 1, 22 + ((8 - i) * 0.02), 150)
						springEnter:SetGoal(UDim2.fromScale(0 + (0.01 * (i)), 0))
						springEnter:Start()
						task.wait(0.2 + ((8 - i) * 0.02))
						
						--for _, spring in pairs(springEnter.springSet) do
						--	spring:SnapToCriticalDamping()
						--end 
						
						springEnter:SetGoal(UDim2.fromScale(0, 0))
						task.wait(0.5)
						springEnter:Stop()
					end)
					--ts:Create(AREAframes[i]:GetChildren()[1], TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
					--	Position = UDim2.fromScale(0, 0)
					--}):Play()
				end
				--task.wait(0.1)
			end
			
		end
		
		
		
		function FUNCTIONSmodule.refreshlist()
		
			for _, v in ipairs(script.Parent.Menu.List.ScrollingFrame:GetChildren()) do
				if v:IsA("TextButton") then
					v:Destroy()
				end
			end
		
			local dense = {}
			for _, module in pairs(getgenv().Modules) do
				if module then
					table.insert(dense, module)
				end
			end
			
			if not AREAModuleSelected then
				AREAModuleSelected = dense[1]
			end
			
		
			for i, module in ipairs(dense) do
				local success, err = pcall(function()
		
					local listbutton = getgenv().YARHM.ListButton:Clone()
					listbutton.Parent           = script.Parent.Menu.List.ScrollingFrame
					listbutton.Name             = module.Name
					listbutton.Text             = module.Name
					listbutton.BackgroundColor3 = FUNCTIONSmodule.getTheme().primaryColor
					listbutton.Visible          = true
					
					local themedColor = Instance.new("StringValue", listbutton)
					themedColor.Name = "themedColor"
					themedColor.Value = "primaryColor"
		
					listbutton.MouseButton1Click:Connect(function()
		
						if selected.Value then
							ts:Create(selected.Value, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								BackgroundColor3 = FUNCTIONSmodule.getTheme().primaryColor,
								TextColor3       = FUNCTIONSmodule.getTheme().textColor,
							}):Play()
						end
		
						selected.Value = listbutton
						AREAModuleSelected = module
						ts:Create(selected.Value, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							BackgroundColor3 = Color3.fromRGB(255,255,255),
							TextColor3       = Color3.fromRGB(0,0,0),
						}):Play()
		
						FUNCTIONSmodule.loader(module)
					end)
		
					listbutton.MouseButton1Down:Connect(function()
						ts:Create(listbutton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Size = UDim2.new(1, -10, 0, 40)
						}):Play()
					end)
		
					listbutton.MouseButton1Up:Connect(function()
						ts:Create(listbutton, TweenInfo.new(1.2, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
							Size = UDim2.new(1, 0, 0, 50),
						}):Play()
					end)
		
					listbutton.MouseLeave:Connect(function()
						ts:Create(listbutton, TweenInfo.new(1.2, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
							Size = UDim2.new(1, 0, 0, 50),
						}):Play()
					end)
				end)
		
				if not success then
					warn(("[YARHM Extra] Error loading module %q: %s"):format(module.Name, err))
				end
			end
		end
		
		function FUNCTIONSmodule.refresharea()
			FUNCTIONSmodule.loader(AREAModuleSelected)
		end
		
		function FUNCTIONSmodule.dialog(title, description, buttons)
			local dialog = script.Parent.Dialog
			dialog.DialogTitle.Text = title
			dialog.DialogDesc.Text = description
		
			for _,v in ipairs(dialog.Options:GetChildren()) do
				if v:IsA("TextButton") and v.Name ~= "OptionPlaceholder" then v:Destroy() end
			end
			for _, button in buttons do
				local newButton = dialog.Options.OptionPlaceholder:Clone()
		
				newButton.Visible = true
				newButton.Name = button
				newButton.Text = button
				newButton.Parent = dialog.Options
				newButton.MouseButton1Click:Connect(function()
					newButton.Parent.Parent.OnSelect:Fire(newButton.Name)
				end)
			end
		
			ts:Create(dialog, TweenInfo.new(1.1, Enum.EasingStyle.Back, Enum.EasingDirection.Out),{
				Size = UDim2.fromOffset(313, 147)
			}):Play()
		
			ts:Create(dialog.UIScale, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out),{
				Scale = 1
			}):Play()
		end
		
		function FUNCTIONSmodule.closedialog()
			local dialog = script.Parent.Dialog
			ts:Create(dialog, TweenInfo.new(1.1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out),{
				Size = UDim2.fromOffset(0, 147)
			}):Play()
		
			ts:Create(dialog.UIScale, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out),{
				Scale = 0
			}):Play()
		end
		
		function FUNCTIONSmodule.waitfordialog()
			return script.Parent.Dialog.OnSelect.Event:Wait()
		end
		
		
		getgenv().YARHMFUNCTIONS = FUNCTIONSmodule
		return FUNCTIONSmodule
		
    end
    routine_module_scripts[script] = module_script
end
do -- Routine Module: StarterGui.YARHM.DraggableObject
    local script = Instance.new("ModuleScript")
    script.Name = "DraggableObject"
    script.Parent = Converted["_YARHM"]
    local function module_script()
    -- © Aetherion 2026

		local function a(b,c)local d=c.AbsoluteSize;local e=c.AbsolutePosition;local f=b.X.Scale*d.X+b.X.Offset;local g=b.Y.Scale*d.Y+b.Y.Offset;local h=math.clamp(f,0,d.X)local i=math.clamp(g,0,d.Y)local j=UDim2.new(b.X.Scale,h-b.X.Scale*d.X,b.Y.Scale,i-b.Y.Scale*d.Y)return j end;local k=UDim2.new;local l=game:GetService("UserInputService")local m=game:GetService("TweenService")local n={}n.__index=n;function n.new(o,p,q,r)local self={}self.Object=o;self.ToMove=p;self.Smooth=q;self.CallbackOnly=r;self.DragStarted=nil;self.DragEnded=nil;self.Dragged=nil;self.Dragging=false;self.LastPosition=nil;self.Velocity=Vector2.new(0,0)setmetatable(self,n)return self end;function n:Enable()local s=self.Object;local t=self.ToMove;local u=nil;local v=nil;local w=nil;local x=false;local function y(z)local A=z.Position-v;local B=UDim2.new(w.X.Scale,w.X.Offset+A.X,w.Y.Scale,w.Y.Offset+A.Y)if self.CallbackOnly then else B=a(B,self.Object:FindFirstAncestorWhichIsA("ScreenGui"))if(self.Smooth==nil or self.Smooth==true)and self.Smooth~=false then m:Create(t and t or s,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Position=B}):Play()else local C=t and t or s;C.Position=B end end;return B end;self.InputBegan=s.InputBegan:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 or z.UserInputType==Enum.UserInputType.Touch then x=true;local D;D=z.Changed:Connect(function()if z.UserInputState==Enum.UserInputState.End and(self.Dragging or x)then self.Dragging=false;D:Disconnect()if self.DragEnded and not x then self.DragEnded(self.Velocity)end;x=false end end)end end)self.InputChanged=s.InputChanged:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseMovement or z.UserInputType==Enum.UserInputType.Touch then u=z end end)self.InputChanged2=l.InputChanged:Connect(function(z)if s.Parent==nil then self:Disable()return end;if x then x=false;if self.DragStarted then self.DragStarted()end;self.Dragging=true;v=z.Position;if t then w=t.Position else w=s.Position end;self.LastPosition=z.Position end;if z==u and self.Dragging then local B=y(z)self.Velocity=z.Position-self.LastPosition;self.LastPosition=z.Position;if self.Dragged then self.Dragged(B)end end end)end;function n:Disable()self.InputBegan:Disconnect()self.InputChanged:Disconnect()self.InputChanged2:Disconnect()if self.Dragging then self.Dragging=false;if self.DragEnded then self.DragEnded(self.Velocity)end end end;return n
		
    end
    routine_module_scripts[script] = module_script
end
do -- Routine Module: StarterGui.YARHM.ClickAndHold
    local script = Instance.new("ModuleScript")
    script.Name = "ClickAndHold"
    script.Parent = Converted["_YARHM"]
    local function module_script()
    -- © Aetherion 2026

		local a={}a.__index=a;local b=game:GetService("UserInputService")function a.new(c,d)local self=setmetatable({},a)self.textButton=c;self.holdTime=d or 0.5;self.holdTask=nil;self.initialPosition=nil;self.Holded=Instance.new("BindableEvent")local function e(f,g)return math.sqrt((g.X-f.X)^2+(g.Y-f.Y)^2)end;self.textButton.MouseButton1Down:Connect(function(h,i)self.initialPosition=Vector2.new(h,i)self.holdTask=task.spawn(function()task.wait(self.holdTime)if self.holdTask then self.Holded:Fire()end end)end)b.InputChanged:Connect(function(j)if j.UserInputType==Enum.UserInputType.MouseMovement or j.UserInputType==Enum.UserInputType.Touch then if self.holdTask and self.initialPosition then local k=j.Position;local l=e(self.initialPosition,k)if l>10 then coroutine.close(self.holdTask)self.holdTask=nil end end end end)b.InputEnded:Connect(function(j)if j.UserInputType==Enum.UserInputType.MouseButton1 or j.UserInputType==Enum.UserInputType.Touch then if self.holdTask then coroutine.close(self.holdTask)self.holdTask=nil end;self.initialPosition=nil end end)return self end;return a
    end
    routine_module_scripts[script] = module_script
end
do -- Routine Module: StarterGui.YARHM.Spring
    local script = Instance.new("ModuleScript")
    script.Name = "Spring"
    script.Parent = Converted["_YARHM"]
    local function module_script()
    -- © Aetherion 2026

		local a=game:GetService("RunService")local b={}function OverDamping(c,d,e,f,g,h)local i=d*d-4*e/c;local j=-1/2;local k=d+math.sqrt(i)local l=d-math.sqrt(i)local m,n=j*k,j*l;local o,p=(n*f-g)/(n-m),(m*f-g)/(m-n)local q=h/e;return{Offset=function(r)return o*math.exp(m*r)+p*math.exp(n*r)+q end,Velocity=function(r)return o*m*math.exp(m*r)+p*n*math.exp(n*r)end,Acceleration=function(r)return o*m*m*math.exp(m*r)+p*n*n*math.exp(n*r)end}end;function CriticalDamping(c,d,e,f,g,h)local s=-d/2;local o,p=f,g-s*f;local q=h/e;return{Offset=function(r)return math.exp(s*r)*(o+p*r)+q end,Velocity=function(r)return math.exp(s*r)*(p*s*r+o*s+p)end,Acceleration=function(r)return s*math.exp(s*r)*(p*s*r+o*s+2*p)end}end;function UnderDamping(c,d,e,f,g,h)local i=d*d-4*e/c;local s=-d/2;local t=math.sqrt(-i)local o,p=f,(g-s*f)/t;local q=h/e;return{Offset=function(r)return math.exp(s*r)*(o*math.cos(t*r)+p*math.sin(t*r))+q end,Velocity=function(r)return-math.exp(s*r)*((o*t-p*s)*math.sin(t*r)+(-p*t-o*s)*math.cos(t*r))end,Acceleration=function(r)return-math.exp(s*r)*((p*t*t+2*o*s*t-p*s*s)*math.sin(t*r)+(o*t*t-2*p*s*t-o*s*s)*math.cos(t*r))end}end;function b.F(u)local f,g,h=u.InitialOffset,u.InitialVelocity,u.ExternalForce;local c,d,e=u.Mass,u.Damping,u.Constant;local i=d*d-4*e/c;if i>0 then return OverDamping(c,d,e,f,g,h)elseif i==0 then return CriticalDamping(c,d,e,f,g,h)else return UnderDamping(c,d,e,f,g,h)end end;local v=b;local w=math.sqrt;local x=math.pi;local y={OFFSET="Offset",VELOCITY="Velocity",ACCELERATION="Acceleration",GOAL="Goal",FREQUENCY="Frequency"}local z=[[.]]local A=[[.]]local u={}local B={}B.__index=function(self,C)local D={[y.OFFSET]=function()local r=tick()-self.StartTick;local E=self.F;local F=E.Offset(r)return F end,[y.VELOCITY]=function()local r=tick()-self.StartTick;local E=self.F;local G=E.Velocity(r)return G end,[y.ACCELERATION]=function()local r=tick()-self.StartTick;local E=self.F;local H=E.Acceleration(r)return H end,[y.GOAL]=function()local I=self.ExternalForce;local J=self.Constant;return I/J end,[y.FREQUENCY]=function()local K=self.Damping;local L=self.Constant;local M=self.Mass;return w(-K*K+4*L/M)/(2*x)end}local N=rawget(self,C)if N~=nil then return N end;local O=D[C]if O~=nil then return O()end;return B[C]end;B.__tostring=function(self)local r=tick()-self.StartTick;local E=self.F;local P=self.AdvancedObjectStringEnabled;local Q;if P==false then Q=string.format(z,E.Offset(r),E.Velocity(r),E.Acceleration(r))elseif P==true then Q=string.format(A,self.Mass,self.Damping,self.Constant,self.Goal,self.Frequency,self.InitialOffset,self.InitialVelocity,self.ExternalForce,self.StartTick,E.Offset(r),E.Velocity(r),E.Acceleration(r))end;return Q end;function u.new(M,K,L,f,g,R)assert(M>0,"Mass for spring system cannot be less than or equal to 0")assert(L>0,"Spring constant for spring system cannot be less than or equal to 0")f=f or 0;g=g or 0;R=R or 0;local S=R*L;local T={Mass=M,Damping=K,Constant=L,InitialOffset=f-R,InitialVelocity=g,ExternalForce=S,AdvancedObjectStringEnabled=false,StartTick=0}setmetatable(T,B)T:Reset()return T end;function u.fromFrequency(M,K,U,f,g,R)assert(M>0,"Mass for spring system cannot be less than or equal to 0")assert(U>0,"Spring frequency for spring system cannot be less than or equal to 0")local L=0.25*M*(4*x*x*U*U+K*K)f=f or 0;g=g or 0;R=R or 0;local S=R*L;local T={Mass=M,Damping=K,Constant=L,InitialOffset=f-R,InitialVelocity=g,ExternalForce=S,AdvancedObjectStringEnabled=false,StartTick=0}setmetatable(T,B)T:Reset()return T end;function B:Reset()self.F=v.F(self)self.StartTick=tick()end;function B:SetExternalForce(V)self.ExternalForce=V;self.InitialOffset=self.Offset-V/self.Constant;self.InitialVelocity=self.Velocity;self:Reset()end;function B:SetGoal(R)self.ExternalForce=R*self.Constant;self.InitialOffset=self.Offset-R;self.InitialVelocity=self.Velocity;self:Reset()end;function B:SetFrequency(U)self.Constant=0.25*self.Mass*(4*x*x*U*U+self.Damping*self.Damping)self.InitialOffset=self.Offset;self.InitialVelocity=self.Velocity;self:Reset()end;function B:SnapToCriticalDamping()self.Damping=2*w(self.Constant/self.Mass)self.InitialOffset=self.Offset;self.InitialVelocity=self.Velocity;self:Reset()end;function B:SetOffset(F,W)self.InitialOffset=F-self.Goal;self.InitialVelocity=W and 0 or self.Velocity;self:Reset()end;function B:AddOffset(F)self.InitialOffset=self.Offset+F;self.InitialVelocity=self.Velocity;self:Reset()end;function B:SetVelocity(G)self.InitialOffset=self.Offset;self.InitialVelocity=G;self:Reset()end;function B:AddVelocity(G)self.InitialOffset=self.Offset;self.InitialVelocity=self.Velocity+G;self:Reset()end;function B:Print()local X=tostring(self)print(X)end;return u
    end
    routine_module_scripts[script] = module_script
end
do -- Routine Module: StarterGui.YARHM.ESPIndicator
    local script = Instance.new("ModuleScript")
    script.Name = "ESPIndicator"
    script.Parent = Converted["_YARHM"]
    local function module_script()
    -- © Aetherion 2026

		-- Robust ESP module with distancing, arrows, and grouping
		-- Designed and written by YARHM
		
		local e={} e.__index=e local a=game:GetService("RunService") local _=game:GetService("Players") local b=game:GetService("HttpService") local l=game:GetService("TweenService") e.Groups={} e.TargetIndex={} e.Defaults={AccentColor=Color3.new(1,1,0),HighlightFillTransparency=0.7,HighlightOutlineTransparency=0,HighlightDepthMode=Enum.HighlightDepthMode.AlwaysOnTop,ArrowShow=false,ArrowEdgePadding=50,ArrowMinDistance=0,ArrowSize=UDim2.new(0,30,0,30),ArrowImage="rbxassetid://97136202386756",ArrowShowDistanceText=true,ArrowDistanceFont=Enum.Font.Montserrat,ArrowDistanceTextSize=18,ShowLabel=false,LabelText="Target",LabelMaxDistance=99999,LabelOffset=Vector3.new(0,2,0),Parent=game:GetService("CoreGui")} function e.new(b)local c=setmetatable({},e) c.Settings={} for a,_ in pairs(e.Defaults)do c.Settings[a]=(b and b[a]~=nil)and b[a]or _ end local _=c.Settings.Parent or _.LocalPlayer:WaitForChild("PlayerGui") c.ScreenGui=Instance.new("ScreenGui") c.ScreenGui.Name="ESPIndicators" c.ScreenGui.IgnoreGuiInset=true c.ScreenGui.ResetOnSpawn=false c.ScreenGui.Parent=_ c.ArrowTemplate=Instance.new("ImageLabel") c.ArrowTemplate.Name="ArrowTemplate" c.ArrowTemplate.Size=c.Settings.ArrowSize c.ArrowTemplate.AnchorPoint=Vector2.new(0.5,0.5) c.ArrowTemplate.BackgroundTransparency=1 c.ArrowTemplate.Image=c.Settings.ArrowImage c.ArrowTemplate.ImageColor3=c.Settings.AccentColor c.ArrowTemplate.Visible=false c.ArrowTemplate.Parent=c.ScreenGui c.Scaler=Instance.new("UIScale") c.Scaler.Name="Scaler" c.Scaler.Scale=0 c.Scaler.Parent=c.ArrowTemplate c.Indicators={} c._updateConn=a.RenderStepped:Connect(function()c:_update()end) c._cleanupConn=a.Heartbeat:Connect(function()c:_cleanupOrphanedArrows() c:_cleanupOrphanedHighlights() c:_cleanupOrphanedLabels()end) return c end function e:AddGroup(_)local a=e.Groups[_] if not a then a={enabled=true,properties={},targets={}} e.Groups[_]=a end return a end function e:GetGroup(_)return e.Groups[_]end function e:RemoveGroup(b)local _=e.Groups[b] if not _ then return false end for _,_ in ipairs(_.targets)do local c=e.TargetIndex[_] if c then for _,a in ipairs(c)do if a==b then table.remove(c,_) break end end if#c==0 then e.TargetIndex[_]=nil end end if not e.TargetIndex[_]then self:Remove(_)end end e.Groups[b]=nil return true end function e:ClearAllGroups()for a,_ in pairs(e.Groups)do self:RemoveGroup(a)end end function e:ToggleGroup(_,a)local b=e.Groups[_] if not b then return end b.enabled=(a~=nil)and a or not b.enabled for _,_ in ipairs(b.targets)do local _=self.Indicators[_] if _ then if _.Highlight then _.Highlight.Enabled=b.enabled end if _.Arrow then _.Arrow.Visible=b.enabled and self.Settings.ArrowShow end if _.Label then _.Label.Enabled=b.enabled end end end return b.enabled end function e:SetGroupProperty(_,a,b)local _=self:AddGroup(_) _.properties[a]=b for _,_ in ipairs(_.targets)do local _=self.Indicators[_] if _ then if a=="AccentColor"then if _.Highlight then _.Highlight.FillColor=b _.Highlight.OutlineColor=b end if _.Arrow then _.Arrow.ImageColor3=b end if _.DistanceLabel then _.DistanceLabel.TextColor3=b end if _.Label and _.Label:FindFirstChild("TextLabel")then _.Label.TextLabel.TextColor3=b end end end end end function e:Add(a,g)assert(a,"ESPIndicator:Add requires a non-nil target") g=g or{} local d=Instance.new("Highlight") d.Name="Highlight_"..b:GenerateGUID(false) d.Adornee=a d.FillTransparency=g.HighlightFillTransparency or self.Settings.HighlightFillTransparency d.FillColor=g.AccentColor or self.Settings.AccentColor d.OutlineColor=g.AccentColor or self.Settings.AccentColor d.OutlineTransparency=g.HighlightOutlineTransparency or self.Settings.HighlightOutlineTransparency d.DepthMode=g.HighlightDepthMode or self.Settings.HighlightDepthMode d.Parent=self.ScreenGui local c,_,e if(g.ArrowShow or self.Settings.ArrowShow)then c=self.ArrowTemplate:Clone() c.Name="Arrow_"..b:GenerateGUID(false) c.ImageColor3=g.AccentColor or self.Settings.AccentColor c.Visible=true c.Parent=self.ScreenGui _=c:FindFirstChild("Scaler") if(g.ArrowShowDistanceText or self.Settings.ArrowShowDistanceText)then e=Instance.new("TextLabel") e.Name="DistanceLabel" e.AnchorPoint=Vector2.new(0.5,0) e.BackgroundTransparency=1 e.Font=g.ArrowDistanceFont or self.Settings.ArrowDistanceFont e.TextSize=g.ArrowDistanceTextSize or self.Settings.ArrowDistanceTextSize e.TextColor3=g.AccentColor or self.Settings.AccentColor e.Parent=c end end local f if(g.ShowLabel or self.Settings.ShowLabel)then f=Instance.new("BillboardGui") f.Name="Label_"..b:GenerateGUID(false) f.AlwaysOnTop=true f.MaxDistance=self.Settings.LabelMaxDistance f.Size=UDim2.new(0,70,0,70) f.StudsOffset=self.Settings.LabelOffset f.Adornee=a f.Parent=self.ScreenGui local _=Instance.new("TextLabel") _.Name="TextLabel" _.Size=UDim2.new(1,0,1,0) _.AnchorPoint=Vector2.new(0.5,0.5) _.Position=UDim2.new(0.5,0,0.5,0) _.BackgroundTransparency=1 _.Font=Enum.Font.SourceSansBold _.TextScaled=true _.TextWrapped=true _.TextSize=14 _.TextColor3=g.AccentColor or self.Settings.AccentColor _.Text=g.LabelText or self.Settings.LabelText _.Parent=f Instance.new("UIStroke",_)end self.Indicators[a]={Highlight=d,Arrow=c,Scaler=_,DistanceLabel=e,Label=f,Options=g} local _=g.GroupName or self.Settings.GroupName if _ then self:AddToGroup(a,_)end end function e:Remove(c)local _=self.Indicators[c] if not _ then return end if _.Highlight then _.Highlight.Adornee=nil _.Highlight:Destroy()end if _.Arrow then _.Arrow:Destroy()end if _.Label then _.Label:Destroy()end local _=e.TargetIndex[c] if _ then for _,_ in ipairs(_)do local b=e.Groups[_] if b then for a,_ in ipairs(b.targets)do if _==c then table.remove(b.targets,a) break end end end end e.TargetIndex[c]=nil end self.Indicators[c]=nil end function e:AddToGroup(c,b)local _=self:AddGroup(b) if not table.find(_.targets,c)then table.insert(_.targets,c)end local a=e.TargetIndex[c] if not a then a={} e.TargetIndex[c]=a end if not table.find(a,b)then table.insert(a,b)end for a,_ in pairs(_.properties)do self:SetGroupProperty(b,a,_)end if not _.enabled then local _=self.Indicators[c] if _ and _.Highlight then _.Highlight.Enabled=false end end return true end function e:RemoveFromGroup(d,b)local c=e.Groups[b] if not c then return false end if table.find(c.targets,d)then for _,a in ipairs(c.targets)do if a==d then table.remove(c.targets,_) break end end else return false end local c=e.TargetIndex[d] if c then for a,_ in ipairs(c)do if _==b then table.remove(c,a) break end end if#c==0 then e.TargetIndex[d]=nil end end return true end function e:GetGroupTargets(_)local _=e.Groups[_] return _ and _.targets or{}end function e:GetTargetGroups(_)return e.TargetIndex[_]or{}end function e:_cleanupOrphanedHighlights()for _,_ in ipairs(self.ScreenGui:GetChildren())do if _:IsA("Highlight")and not table.find(self:_allHighlights(),_)then _.Adornee=nil _:Destroy()end end end function e:_allHighlights()local a={} for _,_ in pairs(self.Indicators)do if _.Highlight then table.insert(a,_.Highlight)end end return a end function e:_cleanupOrphanedArrows()for _,_ in ipairs(self.ScreenGui:GetChildren())do if _:IsA("ImageLabel")and _.Name:match("^Arrow_")then if not table.find(self:_allArrows(),_)then _:Destroy()end end end end function e:_allArrows()local a={} for _,_ in pairs(self.Indicators)do if _.Arrow then table.insert(a,_.Arrow)end end return a end function e:_cleanupOrphanedLabels()for _,_ in ipairs(self.ScreenGui:GetChildren())do if _:IsA("BillboardGui")and _.Name:match("^Label_")then if not table.find(self:_allLabels(),_)then _.Adornee=nil _:Destroy()end end end end function e:_allLabels()local a={} for _,_ in pairs(self.Indicators)do if _.Label then table.insert(a,_.Label)end end return a end function e:_update()local a=workspace.CurrentCamera local _=a.ViewportSize local f,i=_.X,_.Y for _,p in pairs(self.Indicators)do local j=p.Options local h=p.Arrow local k=p.Scaler if((not h)or(not k))and self.Settings.ArrowShow then self:Remove(_) continue end if not h then continue end local n if _:IsA("Model")then n=(_.PrimaryPart and _.PrimaryPart.Position)or _:GetModelCFrame().p elseif _:IsA("BasePart")then n=_.Position else continue end local m,e=a:WorldToViewportPoint(n) local c=(a.CFrame.p-n).Magnitude local _=j.ArrowMinDistance or self.Settings.ArrowMinDistance local o=j.ArrowEdgePadding or self.Settings.ArrowEdgePadding if e and c>_ then l:Create(k,TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Scale=0}):Play()else l:Create(k,TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Scale=1}):Play() local d,g=f-o*2,i-o*2 local b=a.CFrame local _=math.sqrt((d/2)^2+(g/2)^2) local a=n-b.Position local a=b:VectorToObjectSpace(a) local n=Vector2.new(a.X,a.Y).Unit local a=math.clamp(m.X,o,f-o) local b=math.clamp(m.Y,o,i-o) if a==m.X and b==m.Y and e then l:Create(k,TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Scale=0}):Play()else local _=n*_ local b if math.abs(_.Y)>g/2 then b=n*math.abs((g/2)/n.Y)else b=n*math.abs((d/2)/n.X)end local a=f/2+b.X local _=i/2-b.Y local b=math.atan2(n.X,n.Y) l:Create(h,TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position=UDim2.fromOffset(a,_),Rotation=math.deg(b)}):Play()end if p.DistanceLabel then p.DistanceLabel.Text=string.format("%dm",math.round(c)) local _=(j.ArrowSize and j.ArrowSize.Y.Offset or self.Settings.ArrowSize.Y.Offset)+16 p.DistanceLabel.Position=UDim2.new(0.5,0,0,_)end end end end function e:Destroy()if self._updateConn then self._updateConn:Disconnect()end if self._cleanupConn then self._cleanupConn:Disconnect()end self:ClearAllGroups() for _,_ in pairs(self.Indicators)do if _.Highlight then _.Highlight:Destroy()end if _.Arrow then _.Arrow:Destroy()end if _.Label then _.Label:Destroy()end end self.ScreenGui:Destroy() self.Indicators={} e.Groups={} e.TargetIndex={}end return e
    end
    routine_module_scripts[script] = module_script
end
do -- Routine Module: StarterGui.YARHM.Bezier
    local script = Instance.new("ModuleScript")
    script.Name = "Bezier"
    script.Parent = Converted["_YARHM"]
    local function module_script()
    -- © Aetherion 2026

		local h={} h.__index=h function h.new(...)local k={...} assert(#k>=3,"Must have at least 3 points") local e=(#k==3) local _=(#k==4) local j={} local d=Vector3.new local b=d().lerp local f=nil local i={} local c=0 local a=nil local function g(_)local _={_.X,_.Y,_.Z} function _:ToVector3()return d(self[1],self[2],self[3])end function _:lerp(_,a)return b(self:ToVector3(),_:ToVector3(),a)end return _ end if(not e and not _)then for _=1,#k-1 do local a=g(k[_]) local _=g(k[_+1]) local _={a,_,g(a)} i[#i+1]=_ end local b=i for _=#i,2,-1 do local a={} for c=1,_-1 do local b,_=b[c],b[c+1] local _={b[3],_[3],g(b[3])} a[c]=_ i[#i+1]=_ end b=a end a=b[1] c=#i end if(e)then local b,c,_=k[1],k[2],k[3] function j:Get(d,a)if(a)then d=(d<0 and 0 or d>1 and 1 or d)end return(1-d)*(1-d)*b+2*(1-d)*d*c+d*d*_ end elseif(_)then local _,a,c,b=k[1],k[2],k[3],k[4] function j:Get(e,d)if(d)then e=(e<0 and 0 or e>1 and 1 or e)end return(1-e)*(1-e)*(1-e)*_+3*(1-e)*(1-e)*e*a+3*(1-e)*e*e*c+e*e*e*b end else function j:Get(b,_)if(_)then b=(b<0 and 0 or b>1 and 1 or b)end for _=1,c do local _=i[_] local a=_[1]:lerp(_[2],b) local _=_[3] _[1],_[2],_[3]=a.X,a.Y,a.Z end return a[3]:ToVector3()end end function j:GetLength(_)if(not f)then local a=self:GetPath(_ or 0.1) local b=0 for _=2,#a do local _=(a[_-1]-a[_]).Magnitude b=(b+_)end f=b end return f end function j:GetPath(_)assert(type(_)=="number","Must provide a step increment") assert(_>0 and _<1,"Step out of domain; should be between 0 and 1 (exclusive)") local b={} local a=0 for _=0,1,_ do a=_ b[#b+1]=self:Get(_)end if(a<1)then local _=((1-a)<(_*0.5)) b[#b+(_ and 0 or 1)]=self:Get(1)end return b end function j:GetPathByNumberSegments(_)assert(type(_)=="number","Must provide number of segments") assert(_>0,"Number of segments must be greater than 0") return self:GetPath(1/_)end function j:GetPathBySegmentLength(a)assert(type(a)=="number","Must provide a segment length") assert(a>0,"Segment length must be greater than 0") local _=self:GetLength() local _=_/a return self:GetPathByNumberSegments(math.floor(_+0.5))end function j:GetPoints()return k end return setmetatable(j,h)end return h
    end
    routine_module_scripts[script] = module_script
end
do -- Routine Module: StarterGui.YARHM.PointSave
    local script = Instance.new("ModuleScript")
    script.Name = "PointSave"
    script.Parent = Converted["_YARHM"]
    local function module_script()
    -- © Aetherion 2026

		-- Datasaving module using files and folders
		-- Designed and written by YARHM
		
		local _=false local function d(...)if _ then print("[PointSave DEBUG]:",...)end end getgenv()._FOLDERS=getgenv()._FOLDERS or{} getgenv()._FILES=getgenv()._FILES or{} isfolder=isfolder or function(_)d("Checking if folder exists:",_) return getgenv()._FOLDERS[_]~=nil end makefolder=makefolder or function(_)d("Creating folder:",_) getgenv()._FOLDERS[_]={} return getgenv()._FOLDERS[_]end isfile=isfile or function(_)d("Checking if file exists:",_) return getgenv()._FILES[_]~=nil end writefile=writefile or function(a,_)d("Writing file:",a,"with content:",_) getgenv()._FILES[a]=_ return getgenv()._FILES[a]end readfile=readfile or function(_)d("Reading file:",_) return getgenv()._FILES[_]end delfile=delfile or function(_)d("Deleting file:",_) getgenv()._FILES[_]=nil end listfiles=listfiles or function(c)d("Listing files in folder:",c) local _=getgenv()._FOLDERS[c] if _ then local a={} for b,_ in pairs(getgenv()._FILES)do if b:sub(1,#c+1)==c.."/"then local _=b:sub(#c+2) d("Found file in folder:",_) table.insert(a,_)end end return a end d("Folder does not exist:",c) return{}end local b={} b.__index=b local c="PointSaveData" local function _()if not isfolder(c)then d("Base folder not found, creating:",c) makefolder(c)else d("Base folder already exists:",c)end end function b.new(a)d("Initializing new PointSave instance for namespace:",a) _() local _=setmetatable({},b) _.namespace=a _.folderPath=c.."/"..a if not isfolder(_.folderPath)then d("Namespace folder does not exist, creating:",_.folderPath) makefolder(_.folderPath)else d("Namespace folder already exists:",_.folderPath)end return _ end function b:set(b,a)local _=self.folderPath.."/"..b..".txt" d("Setting value for key:",b,"->",a) writefile(_,tostring(a))end function b:get(a)local _=self.folderPath.."/"..a..".txt" d("Getting value for key:",a) if isfile(_)then local _=readfile(_) d("Found value for key:",a,"->",_) return _ end d("Key not found:",a) return nil end function b:remove(a)local _=self.folderPath.."/"..a..".txt" d("Removing key:",a) if isfile(_)then delfile(_) d("Removed file for key:",a)else d("File for key does not exist:",a)end end function b:clear()d("Clearing all keys in namespace:",self.namespace) local _=listfiles(self.folderPath) for _,_ in ipairs(_)do local _=self.folderPath.."/".._ if isfile(_)then d("Deleting file:",_) delfile(_)end end end function b.deleteNamespace(a)local b=c.."/"..a d("Deleting namespace:",a) local _=listfiles(b) for _,_ in ipairs(_)do local _=b.."/".._ if isfile(_)then d("Deleting file from namespace:",_) delfile(_)end end getgenv()._FOLDERS[b]=nil d("Deleted folder for namespace:",a)end function b.listNamespaces()d("Listing all namespaces") _() local b={} for a,_ in pairs(getgenv()._FOLDERS)do if a:sub(1,#c+1)==c.."/"then local _=a:sub(#c+2) d("Found namespace:",_) table.insert(b,_)end end return b end return b
    end
    routine_module_scripts[script] = module_script
end
do -- Routine Module: StarterGui.YARHM.Theme
    local script = Instance.new("ModuleScript")
    script.Name = "Theme"
    script.Parent = Converted["_YARHM"]
    local function module_script()
    -- © Aetherion 2026

		-- Beautiful theming module for YARHM
		
		local YARHMRoot = getgenv().YARHM
		local api = {
			colors = {
				font = Enum.Font.Montserrat,
				textColor = Color3.fromRGB(255, 255, 255),
				accentColor = Color3.fromRGB(197, 0, 0),
				primaryColor = Color3.fromRGB(22, 22, 22),
				secondaryColor = Color3.fromRGB(12, 12, 12),
		
				backgroundColorCSQ = ColorSequence.new(Color3.fromRGB(36, 36, 36), Color3.fromRGB(68, 68, 68)),	
				strokeColorCSQ = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)),
					ColorSequenceKeypoint.new(0.15224914252758026, Color3.fromRGB(50.69031357765198, 50.69031357765198, 50.69031357765198)),
					ColorSequenceKeypoint.new(0.4723183512687683, Color3.fromRGB(255, 0, 4.000000236555934)),
					ColorSequenceKeypoint.new(0.7577854990959167, Color3.fromRGB(50.13314567506313, 50.13314567506313, 50.13314567506313)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(48.000000938773155, 48.000000938773155, 48.000000938773155))
				},
			}
		}
		
		local themeObjects = {
			font = {},
			textColor = {},
			primaryColor = {},
			secondaryColor = {},
			backgroundColorCSQ = {},
			strokeColorCSQ = {},
		}
		
		
		
		-- value method matching
		function api:sortObjects(gui)
			for _, obj in next, gui:getDescendants() do
				if obj:FindFirstChild("themedColor") then 
					if obj:FindFirstChild("themedColor").Value == "primaryColor" then
						table.insert(themeObjects.primaryColor, obj)
					elseif obj:FindFirstChild("themedColor").Value == "secondaryColor" then
						table.insert(themeObjects.secondaryColor, obj)
					elseif obj:FindFirstChild("themedColor").Value == "backgroundColorCSQ" then
						for _, find in ipairs(obj:GetChildren()) do
							if find:IsA("UIGradient") then table.insert(themeObjects.backgroundColorCSQ, find) break end
						end
					else
						warn("FRAME unknown obj: "..obj.Name)
					end
				end
				if obj:IsA("TextLabel") or obj:IsA("TextButton") then
					--print("found obj")
					
					table.insert(themeObjects.font, obj)
					table.insert(themeObjects.textColor, obj)
					--print("added to font obj",obj.Name)
				end
				if obj:IsA("UIStroke") and obj:FindFirstChildWhichIsA("UIGradient") then
					table.insert(themeObjects.strokeColorCSQ, obj:FindFirstChildWhichIsA("UIGradient"))
				end
				
			end
			--print("sorted")
		end
		
		
		--function api:sortObjects(gui)
		--	for _, obj in next, gui:getDescendants() do
		--		if obj:IsA("Frame") then 
		--			if obj.BackgroundColor == api.colors.primaryColor then
		--				table.insert(themeObjects.primaryColor, obj)
		--			elseif obj.BackgroundColor == api.colors.secondaryColor then
		--				table.insert(themeObjects.secondaryColor, obj)
		--			else
		--				warn("FRAME unknown obj: "..obj.Name)
		--				local c = obj.BackgroundColor3
						--print(string.format("color of unknown obj: (%d, %d, %d)", c.R * 255, c.G * 255, c.B * 255))
		--			end
		--		elseif obj:IsA("TextLabel") or obj:IsA("TextButton") then
					--print("found obj")
		--			if obj.BackgroundColor == api.colors.primaryColor then
		--				table.insert(themeObjects.primaryColor, obj)
		--			elseif obj.BackgroundColor == api.colors.secondaryColor then
		--				table.insert(themeObjects.secondaryColor, obj)
		--		--[[
		--			elseif obj.Font == api.colors.font then
						--print("FONT OBJECT", api.colors.font)
		--				table.insert(themeObjects.font, obj)
		--			elseif obj.Text and obj.TextColor == api.colors.textColor then
		--				table.insert(themeObjects.textColor, obj)
		--		]]
		--			else
		--				warn("TEXT unknown obj: "..obj.Name)
		--			end
		--			table.insert(themeObjects.font, obj)
		--			table.insert(themeObjects.textColor, obj)
					--print("added to font obj",obj.Name)
		--		end
		--	end
			--print("sorted")
		--end
		
		function api:updateColor(colorType, newColor)
			--print("aplying")
			--api.colors[colorType] = (colorType == "font" and newColor) or newColor
			if colorType == "font" then
				--for _, obj in next, themeObjects.font do
				--	obj.Font = newColor
				--end
				
				-- changed weights so disabeled sorry
			elseif colorType == "textColor" then
				for _, obj in next, themeObjects.textColor do
					obj.TextColor3 = newColor
				end
			elseif colorType == "primaryColor" then
				for _, obj in next, themeObjects.primaryColor do
					local s=pcall(function() obj.Color = newColor end) if s then return end
					obj.BackgroundColor3 = newColor
				end
			elseif colorType == "secondaryColor" then
				for _, obj in next, themeObjects.secondaryColor do
					local s=pcall(function() obj.Color = newColor end) if s then return end
					obj.BackgroundColor3 = newColor
				end
			elseif colorType == "backgroundColorCSQ" then
				for _, obj in next, themeObjects.backgroundColorCSQ do
					obj.Color = newColor
				end
			elseif colorType == "strokeColorCSQ" then
				for _, obj in next, themeObjects.strokeColorCSQ do
					obj.Color = newColor
				end
			end
		end
		
		function api:setColorTable(t)
			api.colors = t
			if getgenv then getgenv().YARHM_THEME = t end
		end
		
		function api:init(p)
			api:sortObjects(p)
			for colorKey, color in api.colors do
				local s, e = pcall(function() 
					api:updateColor(colorKey, color)
				end)
				if not s then warn(e) end
			end
		end
		
		getgenv().ThemeManager = api
		getgenv().ThemeObjects = themeObjects
		
		getgenv().ThemeManagerModuleObject = script
		
		return api
		
    end
    routine_module_scripts[script] = module_script
end
do -- Routine Module: StarterGui.YARHM.FlyUtility
    local script = Instance.new("ModuleScript")
    script.Name = "FlyUtility"
    script.Parent = Converted["_YARHM"]
    local function module_script()
    -- © Aetherion 2026

		-- Mobile-compatible fly module
		-- Designed and written by YARHM
		
		local l={} local _=game:GetService("Players") local b=game:GetService("RunService") local d=_.LocalPlayer local h=false local e=50 local c=2 local i=0 local g=Vector3.new() local j=nil local k=nil local f=nil local function _()if f then f:Disconnect() f=nil end if j then j:Destroy() j=nil end if k then k:Destroy() k=nil end local _=d.Character if _ then local _=_:FindFirstChildOfClass("Humanoid") if _ then _.PlatformStand=false end end h=false i=0 end local function a(_)local a=d.Character if not h or not a then l:Stop() return end local _=a:FindFirstChildOfClass("Humanoid") local d=a:FindFirstChild("HumanoidRootPart") local a=workspace.CurrentCamera if not _ or _.Health<=0 or not d or not a then l:Stop() return end local _=_.MoveDirection if _.Magnitude>0.01 then i=math.min(e,i+c) g=_.Unit else i=math.max(0,i-c)end local _=Vector3.new(g.X,0,g.Z) local c=Vector3.zero if _.Magnitude>0 then c=_.Unit*i end local f=a.CFrame.LookVector.Unit local b=g:Dot(f) local _=b<0 and-1 or 1 local a=Vector3.new(f.X,0,f.Z) if a.Magnitude>0 then a=a.Unit end local a=math.abs(g:Dot(a)) local _=f.Y*_*a local _=_*i k.Velocity=Vector3.new(c.X,_,c.Z) local _=(i/e)*30 local _=-math.rad(b*_) j.CFrame=CFrame.new(d.Position,d.Position+f)*CFrame.Angles(_,0,0)end function l:Start()if h then return end local c=d.Character if not c then return end local _=c:FindFirstChildOfClass("Humanoid") local c=c:FindFirstChild("HumanoidRootPart") if not _ or not c then return end h=true j=Instance.new("BodyGyro") j.P=100000 j.MaxTorque=Vector3.new(math.huge,math.huge,math.huge) j.CFrame=c.CFrame j.Parent=c k=Instance.new("BodyVelocity") k.P=10000 k.MaxForce=Vector3.new(math.huge,math.huge,math.huge) k.Velocity=Vector3.new(0,0,0) k.Parent=c _.PlatformStand=true f=b.Heartbeat:Connect(a)end function l:Stop()if not h then return end _()end function l:SetMaxSpeed(_)if type(_)=="number"and _>=0 then e=_ else warn("FlyModule:SetMaxSpeed requires a non-negative number.")end end function l:GetMaxSpeed()return e end function l:IsFlying()return h end d.CharacterRemoving:Connect(function(_)if h then l:Stop()end end) return l
    end
    routine_module_scripts[script] = module_script
end

-- Routines:

local function SIXK_routine() -- Routine: StarterGui.YARHM.Universal
    local script = Instance.new("LocalScript")
    script.Name = "Universal"
    script.Parent = Converted["_YARHM"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	local module = {}
	module["gameId"] = 0 -- Restrict module to a certain game ID only. 0 allows all games.
	if (module["gameId"] ~= game.GameId) and module["gameId"] ~= 0 then
		script.Enabled = true
	end
	
	local ts = game:GetService("TweenService")
	local uis = game:GetService("UserInputService")
	local rs = game:GetService("RunService")
	local https = game:GetService("HttpService")
	local Players = game:GetService("Players")
	
	local fu = require(script.Parent.FUNCTIONS)
	local theme = require(script.Parent.Theme)
	local espind = require(script.Parent.ESPIndicator)
	local flyutility = require(script.Parent.FlyUtility)
	local PointSave = require(script.Parent.PointSave)
	
	
	local loopfovandws = false
	local ctrlclicktp = false
	local ws = 16
	local fov = 70
	
	local hidden = false
	
	local YARHMPointSave = PointSave.new("YARHM")
	
	function splitString(str,delim)
		local broken = {}
		if delim == nil then delim = "," end
		for w in string.gmatch(str,"[^"..delim.."]+") do
			table.insert(broken,w)
		end
		return broken
	end
	
	function toTokens(str)
		local tokens = {}
		for op,name in string.gmatch(str,"([+-])([^+-]+)") do
			table.insert(tokens,{Operator = op,Name = name})
		end
		return tokens
	end
	
	function onlyIncludeInTable(tab,matches)
		local matchTable = {}
		local resultTable = {}
		for i,v in pairs(matches) do matchTable[v.Name] = true end
		for i,v in pairs(tab) do if matchTable[v.Name] then table.insert(resultTable,v) end end
		return resultTable
	end
	
	function removeTableMatches(tab,matches)
		local matchTable = {}
		local resultTable = {}
		for i,v in pairs(matches) do matchTable[v.Name] = true end
		for i,v in pairs(tab) do if not matchTable[v.Name] then table.insert(resultTable,v) end end
		return resultTable
	end
	
	function getPlayersByName(Name)
		local Name,Len,Found = string.lower(Name),#Name,{}
		for _,v in pairs(Players:GetPlayers()) do
			if Name:sub(0,1) == '@' then
				if string.sub(string.lower(v.Name),1,Len-1) == Name:sub(2) then
					table.insert(Found,v)
				end
			else
				if string.sub(string.lower(v.Name),1,Len) == Name or string.sub(string.lower(v.DisplayName),1,Len) == Name then
					table.insert(Found,v)
				end
			end
		end
		return Found
	end
	
	function getPlayer(list,speaker)
		if list == nil then return {speaker.Name} end
		local nameList = splitString(list,",")
	
		local foundList = {}
	
		for _,name in pairs(nameList) do
			if string.sub(name,1,1) ~= "+" and string.sub(name,1,1) ~= "-" then name = "+"..name end
			local tokens = toTokens(name)
			local initialPlayers = Players:GetPlayers()
	
			for i,v in pairs(tokens) do
				if v.Operator == "+" then
					local tokenContent = v.Name
					local foundCase = false
	
					if not foundCase then
						initialPlayers = onlyIncludeInTable(initialPlayers,getPlayersByName(tokenContent))
					end
				else
					local tokenContent = v.Name
					local foundCase = false
	
					if not foundCase then
						initialPlayers = removeTableMatches(initialPlayers,getPlayersByName(tokenContent))
					end
				end
			end
	
			for i,v in pairs(initialPlayers) do table.insert(foundList,v) end
		end
	
		local foundNames = {}
		for i,v in pairs(foundList) do table.insert(foundNames,v.Name) end
	
		return foundNames[1]
	end
	
	
	
	task.spawn(function()
		rs.RenderStepped:Connect(function()
			if loopfovandws then
				workspace.CurrentCamera.FieldOfView = fov
				if game.Players.LocalPlayer.Character then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
					end
				end
			end
		end)
	end)
	
	uis.InputBegan:Connect(function(inp, proc)
		if proc then return end
	
		if uis:IsKeyDown(Enum.KeyCode.LeftControl) and inp.KeyCode == Enum.KeyCode.Y and hidden then
			hidden = false
			ts:Create(script.Parent.Menu.UIScale, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Scale = 1
			}):Play()
		end
	end)
	
	local function getPlayerMouse()
		local player = game:GetService("Players").LocalPlayer
		if player then
			return player:GetMouse()
		end
		return nil
	end
	
	-- Function to cast a ray from the cursor to the furthest object
	local function getRayHitPosition()
		local mouse = getPlayerMouse()
		if not mouse then
			return nil
		end
	
		local camera = workspace.CurrentCamera
		local unitRay = camera:ScreenPointToRay(mouse.X, mouse.Y)
		local ray = Ray.new(unitRay.Origin, unitRay.Direction * 1000) -- Adjust the range as needed
	
		local part, position = workspace:FindPartOnRay(ray, game:GetService("Players").LocalPlayer.Character)
	
		if part then
			return position
		else
			return nil
		end
	end
	
	uis.InputBegan:Connect(function(inp, proc)
		if proc then return end
	
		if uis:IsKeyDown(Enum.KeyCode.LeftControl) and inp.UserInputType == Enum.UserInputType.MouseButton1 and ctrlclicktp then
			local ray = getRayHitPosition()
			if not ray then fu.notification("Couldn't find a place to teleport to.") return end
			game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(ray)
		end
	end)
	
	if uis.AccelerometerEnabled then
		uis.DeviceAccelerationChanged:Connect(function(acc)
			if hidden and acc.Position.Magnitude > 28 then
				hidden = false
				ts:Create(script.Parent.Menu.UIScale, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
					Scale = 1
				}):Play()
			end 
		end)
	end
	
	--local flyob = flyutility.new(Players.LocalPlayer)
	
	
	module["Name"] = "Universal"
	
	local ts = game:GetService("TweenService")
	
	--table.insert(module, {
	--	Type = "Text",
	--	Args = {"Welcome to YARHM! The open, free script hub."}
	--})
	
	table.insert(module, {
		Type = "Text",
		Args = {"<font color='#FFFF00'>Another great script</font> by YARHM developers below!"}
	})
	
	table.insert(module, {
		Type = "Button",
		Args = {"AFEM Max - The best AI-powered emote script!", function()
			loadstring(game:HttpGet("https://yarhm.mhi.im/scr?channel=afemmax"))()
			fu.notification("AFEM has been executed.")
		end,}
	})
	
	
	table.insert(module, {
		Type = "Text",
		Args = {"---"}
	})
	
	table.insert(module, {
		Type = "Button",
		Args = {"Join our Discord", function(Self)
			if setclipboard then setclipboard("https://discord.gg/2jbYxvDkxr") end
			fu.notification('Discord link has been copied to clipboard!')
		end,}
	})
	
	
	table.insert(module, {
		Type = "Text",
		Args = {""}
	})
	
	table.insert(module, {
		Type = "Text",
		Args = {"Fly"}
	})
	
	table.insert(module, {
		Type = "Toggle",
		Args = {"OP Fly", function(Self, state)
			if state then
				flyutility:Start(Players.LocalPlayer.Character)
			else
				flyutility:Stop(Players.LocalPlayer.Character)
			end
		end}
	})
	
	table.insert(module, {
		Type = "Range",
		Args = {"Fly speed", 50, 350, 10, function(Self, spd)
			--print(spd)
			flyutility:SetMaxSpeed(spd)
		end}
	})
	
	local infJump = false
	local infJumpConnection = nil
	local landedConnection = nil
	
	local infJumps = 0
	local infJumpDeb = false
	local infJumpOnlyTwo = false
	local landed = true
	
	local function setupHumanoid(humanoid)
		if landedConnection then landedConnection:Disconnect() end
	
		landedConnection = humanoid.StateChanged:Connect(function(_, n)
			if n == Enum.HumanoidStateType.Landed or n == Enum.HumanoidStateType.Running then
	
				landed = true
				infJumps = 0
			end
		end)
	end
	
	table.insert(module, {
		Type = "Text",
		Args = {""}
	})
	
	table.insert(module, {
		Type = "Text",
		Args = {"Jumping"}
	})
	
	table.insert(module, {
		Type = "Toggle",
		Args = {"Infinite jump", function(Self, state)
			infJump = state
	
			if state then
				local char = game.Players.LocalPlayer.Character
				if char and char:FindFirstChildWhichIsA("Humanoid") then
					setupHumanoid(char:FindFirstChildWhichIsA("Humanoid"))
				end
	
				infJumpConnection = uis.JumpRequest:Connect(function()
					local character = game.Players.LocalPlayer.Character
					local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
	
					if not humanoid then return end
	
					if infJumpOnlyTwo and infJumps >= 2 and not landed then
						--print(infJumpOnlyTwo)
						--print(infJumps)
						--print(landed)
						return end
	
					if not infJumpDeb then
						infJumpDeb = true
						humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						infJumps += 1
						landed = false
	
						task.wait(.1)
						infJumpDeb = false
					end
				end)
			else
				if infJumpConnection then infJumpConnection:Disconnect() end
				if landedConnection then landedConnection:Disconnect() end
				infJumps = 0
				landed = true
			end
		end}
	})
	
	table.insert(module, {
		Type = "Toggle",
		Args = {"Limit infinite jump to 2 jumps only", function(Self, state)
			infJumpOnlyTwo = state
			infJumps = 0 
		end}
	})
	
	
	table.insert(module, {
		Type = "Text",
		Args = {""}
	})
	
	table.insert(module, {
		Type = "Text",
		Args = {"Hitbox mod"}
	})
	
	local aggressiveExp = false
	local hitboxExp = 1
	table.insert(module, {
		Type = "Input",
		Args = {"Hitbox expander", "Expand everyone's hitbox", function(Self, ToExpand)
			hitboxExp = ToExpand
			local players = game:GetService("Players"):GetPlayers()
			for i,v in ipairs(players) do
				if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild('HumanoidRootPart') then
					local sizeArg = tonumber(ToExpand)
					local Size = Vector3.new(sizeArg,sizeArg,sizeArg)
					if aggressiveExp then
						for _, part in ipairs(v.Character:GetChildren()) do
							if part:IsA("BasePart") then
								if not ToExpand or sizeArg == 1 then
									part.Size = Vector3.new(2,1,1)
									part.Transparency = 0.2
								else
									part.Size = Size
									part.Transparency = 0.2
								end
								--part.CanCollide = false
							end
						end
					else
						local Root = v.Character:FindFirstChild('HumanoidRootPart')
						if Root:IsA("BasePart") then
							if not ToExpand or sizeArg == 1 then
								Root.Size = Vector3.new(2,1,1)
								Root.Transparency = 0.2
							else
								Root.Size = Size
								Root.Transparency = 0.2
							end
							Root.CanCollide = false
						end
					end
				end
			end
			fu.notification("Hitboxes expanded.")
		end,}
	})
	
	local loopHitBoxExp
	table.insert(module, {
		Type = "Toggle",
		Args = {"Loop hitbox expansion", function(Self, state)
			if state then
				loopHitBoxExp = rs.Heartbeat:Connect(function()
					local players = game:GetService("Players"):GetPlayers()
					for i,v in ipairs(players) do
						if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild('HumanoidRootPart') then
							local sizeArg = tonumber(hitboxExp)
							local Size = Vector3.new(sizeArg,sizeArg,sizeArg)
							local Root = v.Character:FindFirstChild('HumanoidRootPart')
							if aggressiveExp then
								for _, part in ipairs(v.Character:GetChildren()) do
									if part:IsA("BasePart") then
										if not hitboxExp or sizeArg == 1 then
											part.Size = Vector3.new(2,1,1)
											part.Transparency = 0.2
										else
											part.Size = Size
											part.Transparency = 0.2
										end
										--part.CanCollide = false
									end
								end
							else
								local Root = v.Character:FindFirstChild('HumanoidRootPart')
								if Root:IsA("BasePart") then
									if not hitboxExp or sizeArg == 1 then
										Root.Size = Vector3.new(2,1,1)
										Root.Transparency = 0.2
									else
										Root.Size = Size
										Root.Transparency = 0.2
									end
									Root.CanCollide = false
								end
							end
						end
					end
				end)
			else
				loopHitBoxExp:Disconnect()
			end
		end,}
	})
	
	table.insert(module, {
		Type = "Toggle",
		Args = {"Aggressive hitbox expasion (all parts)", function(Self, state)
			aggressiveExp = state
		end,}
	})
	
	
	table.insert(module, {
		Type = "Text",
		Args = {""}
	})
	
	table.insert(module, {
		Type = "Text",
		Args = {"Speed and view"}
	})
	
	table.insert(module, {
		Type = "Input",
		Args = {"Walkspeed", "Set speed", function(Self, speed)
			local lp = game:GetService("Players").LocalPlayer
			local char = lp.Character
			if not char then fu.notification("No character!") return end
			local hu = char:FindFirstChildOfClass("Humanoid")
			if not hu then fu.notification("No humanoid on your character..?") return end
			hu.WalkSpeed = tonumber(speed) or 16
			fu.notification("Walkspeed set.")
			ws = tonumber(speed) or 16
		end,}
	})
	
	
	local walkspeedInDeCrement = 2
	table.insert(module, {
		Type = "Button",
		Args = {"Increase walkspeed", function(Self)
			local lp = game:GetService("Players").LocalPlayer
			local char = lp.Character
			if not char then fu.notification("No character!") return end
			local hu = char:FindFirstChildOfClass("Humanoid")
			if not hu then fu.notification("No humanoid on your character..?") return end
			ws = ws + walkspeedInDeCrement
			hu.WalkSpeed = hu.WalkSpeed + walkspeedInDeCrement
			fu.notification("Walkspeed is now ".. hu.WalkSpeed)
		end,}
	})
	
	table.insert(module, {
		Type = "Button",
		Args = {"Decrease walkspeed", function(Self)
			local lp = game:GetService("Players").LocalPlayer
			local char = lp.Character
			if not char then fu.notification("No character!") return end
			local hu = char:FindFirstChildOfClass("Humanoid")
			if not hu then fu.notification("No humanoid on your character..?") return end
			ws = ws - walkspeedInDeCrement
			hu.WalkSpeed = hu.WalkSpeed - walkspeedInDeCrement
			fu.notification("Walkspeed is now ".. hu.WalkSpeed)
		end,}
	})
	
	table.insert(module, {
		Type = "Input",
		Args = {"Walkspeed increment (How big each increase/decrease is)", "Set", function(Self, input)
			walkspeedInDeCrement = tonumber(input) or 2
			if not tonumber(input) then fu.notification("Not a number. Setting to default (2).") end
			fu.notification("Set walkspeed increment to ".. walkspeedInDeCrement)
		end,}
	})
	
	table.insert(module, {
		Type = "Input",
		Args = {"FOV change", "Set FOV", function(Self, tofov)
			if not tonumber(tofov) then fu.notification("Not a number. Setting to default.") end
			ts:Create(workspace.CurrentCamera, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				FieldOfView = tonumber(tofov) or 70
			}):Play()
			fov = tonumber(tofov) or 70
		end,}
	})
	
	table.insert(module, {
		Type = "Toggle",
		Args = {"Loop walkspeed and FOV", function(Self, state)
			loopfovandws = state
		end,}
	})
	
	table.insert(module, {
		Type = "Text",
		Args = {""}
	})
	
	table.insert(module, {
		Type = "Text",
		Args = {"Teleports"}
	})
	
	if uis.KeyboardEnabled and uis.MouseEnabled then
		table.insert(module, {
			Type = "Toggle",
			Args = {"CTRL+Click Teleport", function(Self, state)
				ctrlclicktp = state
			end,}
		})
	end
	
	
	local function gotoPlayer(targetPlayerName)
		local targetPlayer = Players:FindFirstChild(getPlayer(targetPlayerName, game.Players.LocalPlayer))
		if targetPlayer then
			local character = targetPlayer.Character
			if character and character:FindFirstChild("HumanoidRootPart") then
				local targetPosition = character.HumanoidRootPart.Position
				local playerCharacter = Players.LocalPlayer.Character
				if playerCharacter and playerCharacter:FindFirstChild("HumanoidRootPart") then
					playerCharacter.HumanoidRootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 5, 0))
				end
			end
		else
			print("Player '" .. targetPlayerName .. "' not found.")
		end
	end
	
	table.insert(module, {
		Type = "Input",
		Args = {
			"Enter player's name", 
			"Teleport", 
			function(Self, text)
				gotoPlayer(text)
			end
		}
	})
	
	local spectateLoop = nil
	table.insert(module, {
		Type = "Button",
		Args = {"Spectate players", function(Self)
			local listofplayers = game.Players:GetPlayers()
			local currentlyViewing = 1
			local currentPlayer = listofplayers[currentlyViewing]
			if not currentPlayer then return end
			workspace.CurrentCamera.CameraSubject = currentPlayer.Character.Humanoid
			spectateLoop = task.spawn(function()
				while true do
					fu.dialog("Spectating...", "Now spectating: " .. workspace.CurrentCamera.CameraSubject.Parent.Name, {"Previous", "Stop", "Next"})
					local action = fu.waitfordialog()
					if action == "Stop" then
						fu.closedialog()
						workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
						task.cancel(spectateLoop)
						break
					elseif action == "Next" then
						currentlyViewing = currentlyViewing + 1
						if currentlyViewing > #listofplayers then
							currentlyViewing = 1
						end
						currentPlayer = listofplayers[currentlyViewing]
						if not currentPlayer then return end
						workspace.CurrentCamera.CameraSubject = currentPlayer.Character.Humanoid
					elseif action == "Previous" then
						currentlyViewing = currentlyViewing - 1
						if currentlyViewing < 1 then
							currentlyViewing = #listofplayers
						end
						currentPlayer = listofplayers[currentlyViewing]
						if not currentPlayer then return end
						workspace.CurrentCamera.CameraSubject = currentPlayer.Character.Humanoid
					end
				end
	
			end)
		end,}
	})
	
	table.insert(module, {
		Type = "Text",
		Args = {""}
	})
	
	table.insert(module, {
		Type = "Text",
		Args = {"Aim locking"}
	})
	
	local aimlockrscon
	local target
	
	table.insert(module, {
		Type = "Input",
		Args = {"Target player", "Set target", function(Self, input)
			if not Players:FindFirstChild(getPlayer(input, game.Players.LocalPlayer)) then
				fu.notification("Player not found.")
				return
			end
			fu.notification("Target is set to " .. Players:FindFirstChild(getPlayer(input, game.Players.LocalPlayer)).Name)
			target = Players:FindFirstChild(getPlayer(input, game.Players.LocalPlayer))
		end,}
	})
	
	local aimlock = false
	local cam = workspace.CurrentCamera
	table.insert(module, {
		Type = "Button",
		Args = {"Aim lock", function(Self)
			if aimlock then return end
			if aimlockrscon then aimlockrscon:Disconnect() end
			if not target then fu.notification("Set a target first.") return end
			aimlockrscon = rs.RenderStepped:Connect(function()
				if not target then fu.notification("No valid target.") aimlockrscon:Disconnect() return end
				if not target.Character then return end
				if not target.Character:FindFirstChild("HumanoidRootPart") then return end
				cam.CFrame = CFrame.new(cam.CFrame.Position, target.Character:FindFirstChild("HumanoidRootPart").Position)
			end)
			aimlock = true
			fu.notification("Aim lock is now on.")
		end,}
	})
	
	table.insert(module, {
		Type = "Button",
		Args = {"Unaim lock", function(Self)
			if not aimlock then return end
			aimlock = false
			if aimlockrscon then aimlockrscon:Disconnect() end
			fu.notification("Aim lock is now off.")
		end,}
	})
	
	
	
	
	table.insert(module, {
		Type = "Text",
		Args = {"Fling"}
	})
	
	local playerToFling
	table.insert(module, {
		Type = "Input",
		Args = {"Target fling player", "Set target", function(Self, input)
			if not Players:FindFirstChild(getPlayer(input, game.Players.LocalPlayer)) then
				fu.notification("Player not found.")
				return
			end
			fu.notification("Target is set to " .. Players:FindFirstChild(getPlayer(input, game.Players.LocalPlayer)).Name)
			playerToFling = Players:FindFirstChild(getPlayer(input, game.Players.LocalPlayer))
		end,}
	})
	
	
	local antiFling = false
	table.insert(module, {
		Type = "ButtonGrid",
		Args = {1, {
	
			Fling = function(Self)
				if not playerToFling then
					fu.notification("You need to target a player to fling.")
					return
				end
				if not Players:FindFirstChild(playerToFling.Name) then
					fu.notification("You need to target a player to fling.")
					return
				end
				if antiFling then
					fu.notification("Turn off anti-fling to use fling.")
					return
				end
	
				local player = game.Players.LocalPlayer
				local mouse = player:GetMouse()
				local Targets = {playerToFling}
	
				local Players = game:GetService("Players")
				local Player = Players.LocalPlayer
	
				local AllBool = false
	
				local SkidFling = function(TargetPlayer)
					local Character = Player.Character
					local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
					local RootPart = Humanoid and Humanoid.RootPart
	
					local TCharacter = TargetPlayer.Character
					local THumanoid
					local TRootPart
					local THead
					local Accessory
					local Handle
	
					if TCharacter:FindFirstChildOfClass("Humanoid") then
						THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
					end
					if THumanoid and THumanoid.RootPart then
						TRootPart = THumanoid.RootPart
					end
					if TCharacter:FindFirstChild("Head") then
						THead = TCharacter.Head
					end
					if TCharacter:FindFirstChildOfClass("Accessory") then
						Accessory = TCharacter:FindFirstChildOfClass("Accessory")
					end
					if Accessory and Accessory:FindFirstChild("Handle") then
						Handle = Accessory.Handle
					end
	
					if Character and Humanoid and RootPart then
						if RootPart.Velocity.Magnitude < 50 then
							getgenv().OldPos = RootPart.CFrame
						end
						if THumanoid and THumanoid.Sit and not AllBool then
						end
						if THead then
							if THead.Velocity.Magnitude > 500 then
								fu.dialog("Player flung", "Player is already flung. Fling again?", {"Fling again", "No"})
								if fu.waitfordialog() == "No" then return fu.closedialog() end
								fu.closedialog()
							end
						elseif not THead and Handle then
							if Handle.Velocity.Magnitude > 500 then
								fu.dialog("Player flung", "Player is already flung. Fling again?", {"Fling again", "No"})
								if fu.waitfordialog() == "No" then return fu.closedialog() end
								fu.closedialog()
							end
						end
	
	
						if THead then
							workspace.CurrentCamera.CameraSubject = THead
						elseif not THead and Handle then
							workspace.CurrentCamera.CameraSubject = Handle
						elseif THumanoid and TRootPart then
							workspace.CurrentCamera.CameraSubject = THumanoid
						end
						if not TCharacter:FindFirstChildWhichIsA("BasePart") then
							return
						end
	
						local FPos = function(BasePart, Pos, Ang)
							RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
							Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
							RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
							RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
						end
	
						local SFBasePart = function(BasePart)
							local TimeToWait = 2
							local Time = tick()
							local Angle = 0
	
							repeat
								if RootPart and THumanoid then
									if BasePart.Velocity.Magnitude < 50 then
										Angle = Angle + 100
	
										FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
										task.wait()
									else
										FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
										task.wait()
	
										FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
										task.wait()
									end
								else
									break
								end
							until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or TargetPlayer.Character ~= TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
						end
	
						workspace.FallenPartsDestroyHeight = 0/0
	
						local BV = Instance.new("BodyVelocity")
						BV.Name = "EpixVel"
						BV.Parent = RootPart
						BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
						BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
	
						Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
	
						if TRootPart and THead then
							if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
								SFBasePart(THead)
							else
								SFBasePart(TRootPart)
							end
						elseif TRootPart and not THead then
							SFBasePart(TRootPart)
						elseif not TRootPart and THead then
							SFBasePart(THead)
						elseif not TRootPart and not THead and Accessory and Handle then
							SFBasePart(Handle)
						else
							fu.notification("Can't find a proper part of target player to fling.")
						end
	
						BV:Destroy()
						Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
						workspace.CurrentCamera.CameraSubject = Humanoid
	
						repeat
							RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
							Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
							Humanoid:ChangeState("GettingUp")
							table.foreach(Character:GetChildren(), function(_, x)
								if x:IsA("BasePart") then
									x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
								end
							end)
							task.wait()
						until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
						workspace.FallenPartsDestroyHeight = getgenv().FPDH
					else
						fu.notification("No valid character of said target player. May have died.")
					end
				end
				SkidFling(Targets[1])
				-- this whole thing is skidded LMAOO
			end,
	
			--Stop_Fling = function(Self)
			--	if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyAngularVelocity") then
			--		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyAngularVelocity"):Destroy()
			--	end
			--end,
		}
		}
	})
	
	
	local antiFlingLastPos = Vector3.zero
	local flingNeutralizerCon
	local flingDetectionCon
	local detectedPlayers = {}
	table.insert(module, {
		Type = "Toggle",
		Args = {"Anti-fling", function(Self, state)
			antiFling = state
			if state then
				fu.notification("Anti-fling activated.")
				flingDetectionCon = rs.Heartbeat:Connect(function()
					for _, pl in ipairs(game:GetService("Players"):GetPlayers()) do
						if pl.Character:IsDescendantOf(workspace) then
							if pl.Character.PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or pl.Character.PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
								if not detectedPlayers[pl.Name] then
									fu.notification("A flinger has been detected with the name " .. pl.Name .. "!")
									detectedPlayers[pl.Name] = true	
								end
	
								for _, p in ipairs(pl.Character:GetDescendants()) do
									if p:IsA("BasePart") then
										p.CanCollide = false
										p.AssemblyAngularVelocity = Vector3.zero
										p.AssemblyLinearVelocity = Vector3.zero
										p.CustomPhysicalProperties = PhysicalProperties.new(0,0,0)
									end
								end
							end
						end
					end
				end)
	
				flingNeutralizerCon = rs.Heartbeat:Connect(function()
					if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.PrimaryPart then
						if game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or  game.Players.LocalPlayer.Character.PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
							fu.notification("You were flung. Neutralizing velocity!")
							game.Players.LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.zero
							game.Players.LocalPlayer.Character.PrimaryPart.AssemblyAngularVelocity = Vector3.zero
							if antiFlingLastPos ~= Vector3.zero then
								game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(antiFlingLastPos)
							end
						else
							antiFlingLastPos = game.Players.LocalPlayer.Character.PrimaryPart.Position
						end
					end
				end)
			else
				flingDetectionCon:Disconnect()
				flingNeutralizerCon:Disconnect()
				detectedPlayers = {}
				fu.notification("Anti-fling deactivated.")
			end
		end,}
	})
	
	table.insert(module, {
		Type = "Text",
		Args = {"Miscellaneous"}
	})
	
	-- taken (corporate term for skidded) from infyiff
	table.insert(module, {
		Type = "Button",
		Args = {"Anti AFK detection", function(Self)
			local pl = game.Players.LocalPlayer
			if getconnections then
				for _, connection in pairs(getconnections(pl.Idled)) do
					if connection["Disable"] then
						connection["Disable"](connection)
					elseif connection["Disconnect"] then
						connection["Disconnect"](connection)
					end
				end
			else
				pl.Idled:Connect(function()
					game:GetService("VirtualUser"):CaptureController()
					game:GetService("VirtualUser"):ClickButton2(Vector2.new())
				end)
			end
			
		end,}
	})
	
	--table.insert(module, {
	--	Type = "Dropdown",
	--	Args = {"Player to fling", function()
	--		local playersAsStrings = {"None"}
	--		for _, p in ipairs(game.Players:GetPlayers()) do
	--			table.insert(playersAsStrings, p.Name)
	--		end
	--		return playersAsStrings
	--	end,
	
	--	function(Self, selected)
	--		print(selected)
	--	end,}
	--})
	
	pcall(function()
		if game:GetService("CoreGui"):FindFirstChild("DeltaIcon") then
			table.insert(module, {
				Type = "Toggle",
				Args = {"Hide Delta Icon", function(Self, state)
					game:GetService("CoreGui"):FindFirstChild("DeltaIcon").Enabled = state
				end,}
			})
		end
	end)
	
	
	
	
	table.insert(module, {
		Type = "Button",
		Args = {"Hide YARHM", function(Self)
			if uis.KeyboardEnabled then
				ts:Create(script.Parent.Menu.UIScale, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
					Scale = 0
				}):Play()
				hidden=true
				fu.notification("Press CTRL+SHIFT+Y to bring back the menu.")
			elseif uis.AccelerometerEnabled then
				ts:Create(script.Parent.Menu.UIScale, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
					Scale = 0
				}):Play()
				hidden=true
				fu.notification("Shake your device to bring back the menu.")
			else
				fu.notification("Can't hide YARHM!") -- how else are you gonna open???
			end
		end,}
	}
	)
	
	table.insert(module, {
		Type = "Button",
		Args = {"FPS Boost", function(Self)
			fu.dialog("FPS boosting", "FPS boosting can have unpredictable effects. You may instead lag more using this!", {"FPS boost anyway", "Nevermind"})
			local result = fu.waitfordialog()
			fu.closedialog()
			if result == "FPS boost anyway" then
				local Terrain = workspace:FindFirstChildOfClass('Terrain')
				Terrain.WaterWaveSize = 0
				Terrain.WaterWaveSpeed = 0
				Terrain.WaterReflectance = 0
				Terrain.WaterTransparency = 0
				game.Lighting.GlobalShadows = false
				game.Lighting.FogEnd = 9e9
				pcall(function()
					settings().Rendering.QualityLevel = 1
				end)
				for i,v in pairs(game:GetDescendants()) do
					if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
						v.Material = "Plastic"
						v.Reflectance = 0
					elseif v:IsA("Decal") then
						v.Transparency = 1
					elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
						v.Lifetime = NumberRange.new(0)
					elseif v:IsA("Explosion") then
						v.BlastPressure = 1
						v.BlastRadius = 1
					end
				end
				for i,v in pairs(game.Lighting:GetDescendants()) do
					if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
						v.Enabled = false
					end
				end
				workspace.DescendantAdded:Connect(function(child)
					task.spawn(function()
						if child:IsA('ForceField') then
							rs.Heartbeat:Wait()
							child:Destroy()
						elseif child:IsA('Sparkles') then
							rs.Heartbeat:Wait()
							child:Destroy()
						elseif child:IsA('Smoke') or child:IsA('Fire') then
							rs.Heartbeat:Wait()
							child:Destroy()
						end
					end)
				end)
			end
		end,}
	})
	
	local rsloopconnectionfling
	local clip = true
	local nocliploop
	
	
	table.insert(module, {
		Type = "ButtonGrid",
		Args = {2, {
			Noclip = function()
				clip = false
				nocliploop = rs.Stepped:Connect(function()
					if clip == false and game.Players.LocalPlayer.Character ~= nil then
						for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
							if child:IsA("BasePart") and child.CanCollide == true then
								child.CanCollide = false
							end
						end
					end
				end)
			end,
	
			Reclip = function()
				if clip then return end
				clip = true
				nocliploop:Disconnect()
				fu.notification("Reclipping may need you to reset your character.")
			end,
		}}})
	
	
	
	table.insert(module, {
		Type = "Text",
		Args = {"Other"}
	})
	
	--table.insert(module, {
	--	Type = "Button",
	--	Args = {"Lock/unlock a floating button", function()
	--		fu.lockMode = true
	--		fu.notification("Click/tap a floating button to lock/unlock...")
	--	end,}
	--})
	
	table.insert(module, {
		Type = "Button",
		Args = {"Get ping", function(Self)
			fu.notification(game.Players.LocalPlayer:GetNetworkPing() * 1000)
		end,}
	})
	
	table.insert(module, {
		Type = "Button",
		Args = {"Open developer console (debugging)", function(Self)
			game.StarterGui:SetCore("DevConsoleVisible", true)
			--getgenv().YARHM.Open.UIStroke.Transparency = 0
			--getgenv().YARHM.Open.TextTransparency = 0
			--ts:Create(getgenv().YARHM.Open, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			--	Position = UDim2.fromScale(0.5, 0.903)
			--}):Play()
	
			--ts:Create(getgenv().YARHM.Open.UIStroke, TweenInfo.new(1), {
			--	Transparency = 1
			--}):Play()
			--ts:Create(getgenv().YARHM.Open, TweenInfo.new(1), {
			--	TextTransparency = 1
			--}):Play()
		end}
	}
	)
	
	function themeSerialize(data)
		local function s(v)
			local t = typeof(v)
			if t == "number" or t == "string" or t == "boolean" then
				return v
			elseif t == "Color3" then
				return {__type="Color3", r=math.floor(v.R*255+0.5), g=math.floor(v.G*255+0.5), b=math.floor(v.B*255+0.5)}
			elseif t == "EnumItem" then
				return {__type="EnumItem", enumType=v.EnumType.Name, name=v.Name}
			elseif t == "ColorSequence" then
				local kp = {}
				for _, k in ipairs(v.Keypoints) do
					table.insert(kp, {t=k.Time, v={r=math.floor(k.Value.R*255+0.5), g=math.floor(k.Value.G*255+0.5), b=math.floor(k.Value.B*255+0.5)}})
				end
				return {__type="ColorSequence", keypoints=kp}
			elseif t == "table" then
				local out = {}
				for k, val in pairs(v) do
					if k ~= "font" then out[k] = s(val) end
				end
				return out
			else
				error("Unsupported type: " .. t)
			end
		end
		return s(data)
	end
	
	function themeDeserialize(data)
		local function d(v)
			if typeof(v) ~= "table" then return v end
			if v.__type == "Color3" then
				return Color3.fromRGB(v.r, v.g, v.b)
			elseif v.__type == "EnumItem" then
				local e = Enum[v.enumType] return e and e[v.name] or nil
			elseif v.__type == "ColorSequence" then
				local kps = {}
				for _, k in ipairs(v.keypoints) do
					table.insert(kps, ColorSequenceKeypoint.new(k.t, Color3.fromRGB(k.v.r, k.v.g, k.v.b)))
				end
				return ColorSequence.new(kps)
			else
				local out = {}
				for k, val in pairs(v) do out[k] = d(val) end
				return out
			end
		end
		return d(data)
	end
	
	table.insert(module, {
		Type = "Text",
		Args = {"Theme"}
	})
	
	local function loadThemeFromSave(last)
		if not last then task.wait(1) else task.wait(0.2) end
		if YARHMPointSave:get("YARHMGlobal_themeCode") then
			local themeObjectImport = themeDeserialize(https:JSONDecode(fu.from_base64(YARHMPointSave:get("YARHMGlobal_themeCode"))))
			theme:setColorTable(themeObjectImport)
			theme:init(getgenv().YARHM)
	
			fu.setTheme(themeObjectImport)
	
			fu.refreshlist()
			fu.refresharea()
			if not last then loadThemeFromSave(true) end -- im getting desperate
		end
	end
	
	table.insert(module, {
		Type = "Input",
		Args = {
			"Theme code",
			"Apply",
			function(obj, value)
				local themeObjectImport = themeDeserialize(https:JSONDecode(fu.from_base64(value)))
				theme:setColorTable(themeObjectImport)
				theme:init(getgenv().YARHM)
				
				fu.setTheme(themeObjectImport)
				
				fu.refreshlist()
				fu.refresharea()
				fu.notification("Successfully applied theme!")
				
				YARHMPointSave:set("YARHMGlobal_themeCode", value)
			end
		}
	})
	
	table.insert(module, {
		Type = "Button",
		Args = {"Reload theme", function()
			theme:init(getgenv().YARHM)
	
			fu.refreshlist()
			fu.refresharea()
		end,}
	})
	
	table.insert(module, {
		Type = "Button",
		Args = {"Delete theme from save", function()
			YARHMPointSave:remove("YARHMGlobal_themeCode")
			
			fu.notification("Theme will not be restored on the next executes.")
		end,}
	})
	
	task.spawn(loadThemeFromSave)
	
	
	
	--task.spawn(function()
	--	local success, titles = pcall(function()
	--		return https:JSONDecode(game:HttpGet("https://yarhm.mhi.im/static/ingametitles.json"))
	--	end)
	
	--	if not success then
	--		titles = {}
	--	end
	
	--	local function applyTag(player)
	--		local data = titles[player.Name]
	--		if data and player.Character then
	--			local head = player.Character:FindFirstChild("Head")
	--			if head then
	--				espind:Remove(head)
	--				espind:Add(head, {
	--					ShowLabel = true,
	--					LabelText = data.text,
	--					AccentColor = Color3.fromHex(data.color),
	--					LabelMaxDistance = 50,
	--					LabelOffset = Vector3.new(0, 2, 0),
	--					GroupName = "UserTags"
	--				})
	--			end
	--		end
	--	end
	
	--	local function onCharacterAdded(player)
	--		player.CharacterAdded:Connect(function(character)
	--			task.wait(1) -- small delay
	--			applyTag(player)
	--		end)
	--	end
	
	--	for _, player in ipairs(Players:GetPlayers()) do
	--		applyTag(player)
	--		onCharacterAdded(player)
	--	end
	
	--	Players.PlayerAdded:Connect(function(player)
	--		onCharacterAdded(player)
	--	end)
	--end)
	
	--table.insert(module, {
	--	Type = "Toggle",
	--	Args = {"Hide YARHM+/Developer tags", function(_, state)
	--		local group = espind:GetGroup("UserTags")
	--		if group then
	--			espind:ToggleGroup("UserTags", not state)
	--		end
	--	end
	--	}
	--})
	
	
	--table.insert(module, {
	--	Type = "Dropdown",
	--	Args = {"how rizz is yarhm", {"very rizz", "no rizz"}, function(Self, item)
	--		print(item)
	--	end,}
	--})
	
	-- ProximityPrompt Auto TP
	local autoTPPrompt = false
	local promptRange = 50
	local promptConn
	
	table.insert(module, {
		Type = "Text",
		Args = {"ProximityPrompt"}
	})
	
	table.insert(module, {
		Type = "Toggle",
		Args = {"Auto TP to nearest ProximityPrompt", function(Self, state)
			autoTPPrompt = state
			if state then
				promptConn = rs.Heartbeat:Connect(function()
					if not autoTPPrompt then return end
					local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
					if not hrp then return end
					
					local nearest, nearestDist = nil, promptRange
					for _, obj in ipairs(workspace:GetDescendants()) do
						if obj:IsA("ProximityPrompt") and obj.Enabled then
							local part = obj.Parent
							if part and part:IsA("BasePart") then
								local dist = (part.Position - hrp.Position).Magnitude
								if dist < nearestDist then
									nearestDist = dist
									nearest = part
								end
							end
						end
					end
					
					if nearest then
						hrp.CFrame = nearest.CFrame + Vector3.new(0, 3, 0)
					end
				end)
			else
				if promptConn then promptConn:Disconnect() promptConn = nil end
			end
		end}
	})
	
	table.insert(module, {
		Type = "Range",
		Args = {"Prompt range (studs)", 10, 200, 10, function(Self, val)
			promptRange = val
		end}
	})
	
	-- ========== NEW FEATURES FROM SCRIPTBLOX TSB LIST ==========
	
	-- Invisibility
	local invisConnection = nil
	local invisEnabled = false
	table.insert(module, {
		Type = "Text",
		Args = {"Invisibility"}
	})
	table.insert(module, {
		Type = "Toggle",
		Args = {"Invisibility", function(Self, state)
			invisEnabled = state
			local char = LP.Character
			if not char then return end
			
			if state then
				invisConnection = rs.RenderStepped:Connect(function()
					for _, part in ipairs(char:GetDescendants()) do
						if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
							part.LocalTransparencyModifier = 1
						elseif part:IsA("Decal") or part:IsA("Texture") then
							part.LocalTransparencyModifier = 1
						end
					end
					-- Keep accessories invisible too
					for _, acc in ipairs(char:GetChildren()) do
						if acc:IsA("Accessory") then
							for _, p in ipairs(acc:GetDescendants()) do
								if p:IsA("BasePart") then p.LocalTransparencyModifier = 1 end
							end
						end
					end
				end)
			else
				if invisConnection then invisConnection:Disconnect() invisConnection = nil end
				for _, part in ipairs(char:GetDescendants()) do
					if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
						part.LocalTransparencyModifier = 0
					elseif part:IsA("Decal") or part:IsA("Texture") then
						part.LocalTransparencyModifier = 0
					end
				end
				for _, acc in ipairs(char:GetChildren()) do
					if acc:IsA("Accessory") then
						for _, p in ipairs(acc:GetDescendants()) do
							if p:IsA("BasePart") then p.LocalTransparencyModifier = 0 end
						end
					end
				end
			end
		end}
	})
	
	-- Click Teleport
	table.insert(module, {
		Type = "Toggle",
		Args = {"Click Teleport (hold Ctrl+Click)", function(Self, state)
			if state then
				clickTPConn = uis.InputBegan:Connect(function(input, gp)
					if gp then return end
					if input.UserInputType == Enum.UserInputType.MouseButton1 and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
						local mouse = LP:GetMouse()
						if mouse.Hit then
							local hrp = myHRP()
							if hrp then hrp.CFrame = mouse.Hit + Vector3.new(0, 5, 0) end
						end
					end
				end)
			else
				if clickTPConn then clickTPConn:Disconnect() clickTPConn = nil end
			end
		end}
	})
	
	-- Anti Staff
	local antiStaffConn = nil
	table.insert(module, {
		Type = "Toggle",
		Args = {"Anti Staff (kick on staff join)", function(Self, state)
			if state then
				antiStaffConn = Players.PlayerAdded:Connect(function(p)
					if p:GetRankInGroup(0) > 0 then -- placeholder, real check needs group IDs
						LP:Kick("Staff detected: " .. p.Name)
					end
				end)
			else
				if antiStaffConn then antiStaffConn:Disconnect() antiStaffConn = nil end
			end
		end}
	})
	
	-- Anti Ragdoll
	local antiRagdollConn = nil
	table.insert(module, {
		Type = "Toggle",
		Args = {"Anti Ragdoll", function(Self, state)
			if state then
				antiRagdollConn = rs.Heartbeat:Connect(function()
					local hum = LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
					if hum and hum:GetState() == Enum.HumanoidStateType.Ragdoll then
						hum:ChangeState(Enum.HumanoidStateType.GettingUp)
					end
				end)
			else
				if antiRagdollConn then antiRagdollConn:Disconnect() antiRagdollConn = nil end
			end
		end}
	})
	
	-- Auto Dodge (simple: dash on nearby attack anim)
	local autoDodgeConn = nil
	table.insert(module, {
		Type = "Toggle",
		Args = {"Auto Dodge (dash on nearby attacks)", function(Self, state)
			if state then
				autoDodgeConn = rs.Heartbeat:Connect(function()
					local hrp = myHRP()
					if not hrp then return end
					for _, p in ipairs(Players:GetPlayers()) do
						if p ~= LP and p.Character then
							local hum = p.Character:FindFirstChildOfClass("Humanoid")
							local vhrp = p.Character:FindFirstChild("HumanoidRootPart")
							if hum and vhrp and (vhrp.Position - hrp.Position).Magnitude < 15 then
								for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
									if track.IsPlaying and track.Length > 0 and track.Length < 2 and track.TimePosition > 0.1 and track.TimePosition < 0.8 then
										-- dash away
										pcall(function()
											VIM:SendKeyEvent(true, Enum.KeyCode.Q, false, game)
											task.wait(0.05)
											VIM:SendKeyEvent(false, Enum.KeyCode.Q, false, game)
										end)
										break
									end
								end
							end
						end
					end
				end)
			else
				if autoDodgeConn then autoDodgeConn:Disconnect() autoDodgeConn = nil end
			end
		end}
	})
	
	-- HipHeight
	table.insert(module, {
		Type = "Range",
		Args = {"HipHeight", 2, 50, 1, function(Self, val)
			local hum = LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
			if hum then hum.HipHeight = val end
		end}
	})
	
	-- Click Teleport
	local clickTPConn = nil
	table.insert(module, {
		Type = "Toggle",
		Args = {"Click Teleport (Ctrl+Click)", function(Self, state)
			if state then
				clickTPConn = uis.InputBegan:Connect(function(input, gp)
					if gp then return end
					if input.UserInputType == Enum.UserInputType.MouseButton1 and uis:IsKeyDown(Enum.KeyCode.LeftControl) then
						local mouse = LP:GetMouse()
						if mouse.Hit then
							local hrp = myHRP()
							if hrp then hrp.CFrame = mouse.Hit + Vector3.new(0, 5, 0) end
						end
					end
				end)
			else
				if clickTPConn then clickTPConn:Disconnect() clickTPConn = nil end
			end
		end}
	})
	
	repeat task.wait() until getgenv().Modules
	getgenv().Modules[1] = module
end
local function OEUTOK_routine() -- Routine: StarterGui.YARHM.Init
    local script = Instance.new("LocalScript")
    script.Name = "Init"
    script.Parent = Converted["_YARHM"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	getgenv().Modules = {}
	
	local ts = game:GetService("TweenService")
	
	
	getgenv().YARHM = script.Parent
	getgenv().ThemeManager = require(script.Parent.Theme)
	local COREGUI = game:GetService("CoreGui")
	function randomString()
		local length = math.random(10,20)
		local array = {}
		for i = 1, length do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end
	local s, e = pcall(function()
		if get_hidden_gui or gethui then
			local hiddenUI = get_hidden_gui or gethui
			script.Parent.Name = randomString()
			script.Parent.Parent = hiddenUI()
			--print("[YARHM Extra] - Using get_hidden_gui for anti-detection.")
		elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
			script.Parent.Name = randomString()
			syn.protect_gui(script.Parent)
			script.Parent.Parent = COREGUI
			--print("[YARHM Extra] - Using syn.protect_gui for anti-detection.")
		elseif COREGUI:FindFirstChild('RobloxGui') then
			script.Parent.Parent = COREGUI.RobloxGui
			--print("[YARHM Extra] - Using RobloxGui for anti-detection.")
		else
			--warn("[YARHM Extra] - Using CoreGui as anti-detection. This is the most basic coverage and can still be detected.")
		end
	end)
	
	local func = require(script.Parent.FUNCTIONS)
	getgenv().YARHM_FUNCTIONS = func
	
	--print("[YARHM Extra] - YARHM is now in " .. tostring(script.Parent:GetFullName()))
	if not s then
		--warn("[YARHM Extra] - Attempts at anti-detection failed. Using CoreGui as anti-detection.")
		warn(e)	
	end
	
	--printidentity("[YARHM Extra] - Your executor level (identity) is")
	
	local getExeName = identifyexecutor or getexecutorname or function() return "Yet Another Roblox Executor v1.2" end
	--print("[YARHM Extra] - Your executor is " .. getExeName())
	
	script.Parent.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
	script.Parent.ScreenInsets = Enum.ScreenInsets.None
	script.Parent.ResetOnSpawn = false
	
	
	script.Parent.Menu.Position = UDim2.fromScale(0.5, -0.6)
	--script.Parent.Menu.Size = UDim2.fromOffset(441,0)
	
	script.Parent.Dialog.Size = UDim2.fromOffset(0, 147)
	script.Parent.Dialog.UIScale.Scale = 0
	
	script.Parent.Dialog.Visible = true
	
	script.Parent.Menu.CanvasGroup.Visible = true
	script.Parent.Menu.CanvasGroup.GroupTransparency = 0
	
	if not game:IsLoaded() then
		game.Loaded:Wait()
	end
	
	--func.notification("Welcome to YARHM Nebula.")
	script.Parent.Menu.HubName.Text = script.Parent.Menu.HubName.Text .. `<font transparency="0.8" size="5">{func.__v}</font>`
	
	ts:Create(script.Parent.Menu, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), 
		{Position = UDim2.fromScale(0.5, 0.05)}
	):Play()
	
	task.wait(1)
	ts:Create(script.Parent.Menu.CanvasGroup, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), 
		{GroupTransparency = 1}
	):Play()
	func.refreshlist()
	task.wait(0.5)
	script.Parent.Menu.CanvasGroup.Visible = false
	script.Parent.Menu.CanvasGroup.TextLabel.Visible = false
	script.Parent.Menu.CanvasGroup.ImageLabel.Visible = true
	script.Parent.Menu.CanvasGroup.Interactable = true
	
	script.Parent.Menu.CloseArea.AllowForSpring:Fire()
	task.wait(1)
	func.loadFloatingButtons()
	--require(script.Parent.Theme):init(getgenv().YARHM)
	
	--func.refreshlist()
	--func.refresharea()
	
	--getgenv().ThemeManager:init(script.Parent)
end
local function NVUYGAA_routine() -- Routine: StarterGui.YARHM.Open.InitOpen
    local script = Instance.new("LocalScript")
    script.Name = "InitOpen"
    script.Parent = Converted["_Open"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	local ts = game:GetService("TweenService")
	
	
	local stroke = Instance.new("UIStroke")
	stroke.Parent = script.Parent
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	stroke.Color = Color3.fromRGB(255,255,255)
	
	
	script.Parent.Position = UDim2.fromScale(0.5, -1)
	ts:Create(script.Parent, TweenInfo.new(1.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
		Position = UDim2.fromScale(0.5, 0.063)
	}):Play()
	
	
	task.wait(5)
	ts:Create(script.Parent, TweenInfo.new(5), {
		TextTransparency = 1
	}):Play()
	--ts:Create(stroke, TweenInfo.new(5), {
	--	Transparency = 1
	--}):Play()
end
local function MGAVM_routine() -- Routine: StarterGui.YARHM.Open.OnClick
    local script = Instance.new("LocalScript")
    script.Name = "OnClick"
    script.Parent = Converted["_Open"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	local ts = game:GetService("TweenService")
	
	local clickCount = 0
	local lastClickTime = tick()
	script.Parent.MouseButton1Click:Connect(function()
		local currentTime = tick()
		
		script.Parent.TextTransparency = 1
		ts:Create(script.Parent, TweenInfo.new(1),
			{TextTransparency = 1}
		):Play()
		
		-- Check if the time since the last click is within a certain threshold
		if currentTime - lastClickTime < 0.5 then
			clickCount = clickCount + 1
		else
			
			clickCount = 1
		end
	
		lastClickTime = currentTime
	
		if clickCount == 3 then
			-- Triple-click detected
	
			ts:Create(getgenv().YARHM.Menu, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out), 
				{Position = UDim2.fromScale(0.499, 0.041), Size = UDim2.fromOffset(441, 268)}
			):Play()
		end
	end)
	
end
local function ZMMHXK_routine() -- Routine: StarterGui.YARHM.Open.Resizer
    local script = Instance.new("LocalScript")
    script.Name = "Resizer"
    script.Parent = Converted["_Open"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	local guiObject = script.Parent
	local userInputService = game:GetService("UserInputService")
	local ts = game:GetService("TweenService")
	
	local resizing = false
	local initialMousePosition = nil
	local initialSize = nil
	local touchCount = 0
	
	-- Define the minimum width (50 pixels) and maximum width (initial width)
	local MIN_WIDTH = 100
	local MAX_WIDTH = guiObject.Size.X.Offset
	
	local function onInputBegan(input, gameProcessed)
		if input.UserInputType == Enum.UserInputType.Touch then
			touchCount = touchCount + 1
		end
	
		if touchCount == 2 then
			resizing = false
			return
		end
	
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			resizing = true
			initialMousePosition = input.Position
			initialSize = guiObject.Size
		end
	end
	
	local function onInputEnded(input, gameProcessed)
		if input.UserInputType == Enum.UserInputType.Touch then
			touchCount = touchCount - 1
		end
	
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then		
			resizing = false
			initialMousePosition = nil
			initialSize = nil
			--ts:Create(guiObject.UIStroke, TweenInfo.new(1.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			--	Transparency = 1
			--}):Play()
		end
	end
	
	local function onInputChanged(input, gameProcessed)
		if touchCount == 2 then
			return
		end
	
		if resizing and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - initialMousePosition
			if math.abs(delta.X) > 50 then
				local newWidth = math.clamp(initialSize.X.Offset + delta.X, MIN_WIDTH, MAX_WIDTH)
				local newSize = UDim2.new(
					initialSize.X.Scale,
					newWidth,
					initialSize.Y.Scale,
					initialSize.Y.Offset
				)
				ts:Create(guiObject, TweenInfo.new(0.8, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
					Size = newSize
				}):Play()
				--guiObject.UIStroke.Transparency = 0
			end
		end
	end
	
	guiObject.InputBegan:Connect(onInputBegan)
	guiObject.InputEnded:Connect(onInputEnded)
	userInputService.InputChanged:Connect(onInputChanged)
	
end
local function VHKKYR_routine() -- Routine: StarterGui.YARHM.FloatingButton.Keybinding
    local script = Instance.new("LocalScript")
    script.Name = "Keybinding"
    script.Parent = Converted["_FloatingButton"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	
end
local function PWNP_routine() -- Routine: StarterGui.YARHM.FloatingButton.Invisible
    local script = Instance.new("LocalScript")
    script.Name = "Invisible"
    script.Parent = Converted["_FloatingButton"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	--local ts = game:GetService("TweenService")
	
	--local holding = false
	--local invisible = false
	
	
	
	--script.Parent.MouseButton1Down:Connect(function()
	--	holding = true
	--	task.wait(0.5)
	--	if holding then
	--		if not invisible then 
	--			invisible = true
	--			ts:Create(script.Parent, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
	--				BackgroundTransparency = 1,
	--				TextTransparency = 1
	--			}):Play()
	--			ts:Create(script.Parent.UIStroke, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
	--				Transparency = 0.7
	--			}):Play()
	--		else
	--			invisible = false
	--			ts:Create(script.Parent, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
	--				BackgroundTransparency = 0,
	--				TextTransparency = 0
	--			}):Play()
	--			ts:Create(script.Parent.UIStroke, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
	--				Transparency = 0
	--			}):Play()
	--		end
	--	end
	--end)
	
	--script.Parent.MouseButton1Up:Connect(function()
	--	holding = false
	--end)
end
local function ETDFZV_routine() -- Routine: StarterGui.YARHM.AddCustomModule.Add.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Add"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	local ts = game:GetService("TweenService")
	
	local function loadModule(modulelink)
		if script.Parent.Parent.TextBox.Text == "" and not modulelink then return end
		ts:Create(script.Parent.Parent.Parent.Menu.UIScale, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Scale = 1
		}):Play()
		ts:Create(script.Parent.Parent, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.fromScale(0.5, -0.5)
		}):Play()
	
	
		local lastmodule = getgenv().Modules[#getgenv().Modules]
		require(script.Parent.Parent.Parent.FUNCTIONS).notification("Module is loading...")
	
		local moduleload = modulelink
		if script.Parent.Parent.TextBox.Text ~= "" then
			moduleload = script.Parent.Parent.TextBox.Text
		end
	
		local moduleEx = loadstring(game:HttpGet(moduleload))
		--setfenv(moduleEx, {FUNCTIONS = require(script.Parent.Parent.Parent.FUNCTIONS)})
	
		local newmodule = moduleEx()
		if newmodule["BG_TASK"] then
			coroutine.wrap(newmodule["BG_TASK"])()
		end
		if getgenv().Modules[#getgenv().Modules] ~= lastmodule then
			local newmodule = getgenv().Modules[#getgenv().Modules]
			require(script.Parent.Parent.Parent.FUNCTIONS).notification("New module added: " .. newmodule["Name"])
			require(script.Parent.Parent.Parent.FUNCTIONS).refreshlist()
		else
			require(script.Parent.Parent.Parent.FUNCTIONS).notification("Module failed to load...")
		end
	end
	script.Parent.MouseButton1Click:Connect(function() loadModule() end)
	
	-- Additional plugin modules
	task.wait(1.5)
	if game.gameId == 5794311181 then loadModule("https://yarhm.mhi.im/static/cnasim.yrmdl") end -- CNA Simulator
end
local function VXGKP_routine() -- Routine: StarterGui.YARHM.AddCustomModule.Cancel.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Cancel"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	local ts = game:GetService("TweenService")
	
	script.Parent.MouseButton1Click:Connect(function()
		ts:Create(script.Parent.Parent.Parent.Menu.UIScale, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Scale = 1
		}):Play()
		ts:Create(script.Parent.Parent, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.fromScale(0.5, -0.5)
		}):Play()
	end)
end
local function SEWCH_routine() -- Routine: StarterGui.YARHM.Menu.UIStroke.UIGradient.Animator
    local script = Instance.new("LocalScript")
    script.Name = "Animator"
    script.Parent = Converted["_UIGradient4"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	local ts = game:GetService("TweenService")
	
	ts:Create(script.Parent, TweenInfo.new(
		10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut,
		math.huge, false), {
			Rotation = -180
		}):Play()
end
local function NDWJFUA_routine() -- Routine: StarterGui.YARHM.Menu.CloseArea.CloseOpen
    local script = Instance.new("LocalScript")
    script.Name = "CloseOpen"
    script.Parent = Converted["_CloseArea"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	
	local menu = script.Parent.Parent
	local Spring = require(menu.Parent.Spring)
	local DraggableObject = require(menu.Parent.DraggableObject)
	local Bezier = require(menu.Parent.Bezier)
	
	-- Tween the TextLabel transparency
	--TweenService:Create(script.Parent.TextLabel, TweenInfo.new(20, Enum.EasingStyle.Linear), {
	--	TextTransparency = 1,
	--	BackgroundTransparency = 1
	--}):Play()
	
	local closed = false
	local springing = false
	
	local closing
	
	local lastPos = UDim2.fromScale(0.5, 0.5)
	local closedLastPos = UDim2.fromScale(0.5, 0.1)
	
	-- Initialize springs for menu position and size
	local MenuPosXScale = Spring.new(0.7, 30, 160, menu.Position.X.Scale, 0, menu.Position.X.Scale)
	local MenuPosYScale = Spring.new(0.7, 45, 190, 0.05, 0, 0.05)
	local MenuPosXOffset = Spring.new(0.7, 30, 160, 0, 0)
	local MenuPosYOffset = Spring.new(0.7, 45, 190, 0, 0)
	local MenuSizeXOffset = Spring.new(1, 25, 120, menu.Size.X.Offset, 0, menu.Size.X.Offset)
	local MenuSizeYOffset = Spring.new(1, 25, 120, menu.Size.Y.Offset, 0, menu.Size.Y.Offset)
	
	local MenuRotation = Spring.new(1, 18, 100, menu.Rotation, 0, menu.Rotation)
	
	
	-- Functions to update spring goals and offsets
	local function setSpringPosGoal(udim2)
		MenuPosXScale:SetGoal(udim2.X.Scale)
		MenuPosYScale:SetGoal(udim2.Y.Scale)
		MenuPosXOffset:SetGoal(udim2.X.Offset)
		MenuPosYOffset:SetGoal(udim2.Y.Offset)
	end
	
	local function setSpringSizeGoal(udim2)
		MenuSizeXOffset:SetGoal(udim2.X.Offset)
		MenuSizeYOffset:SetGoal(udim2.Y.Offset)
	end
	
	-- Render step to update menu position and size based on spring values
	RunService.RenderStepped:Connect(function()
		if springing then
			menu.Position = UDim2.new(MenuPosXScale.Offset, MenuPosXOffset.Offset, MenuPosYScale.Offset, MenuPosYOffset.Offset)
			menu.Size = UDim2.fromOffset(MenuSizeXOffset.Offset, MenuSizeYOffset.Offset)
			menu.Rotation = MenuRotation.Offset
			MenuRotation:SetGoal(0)
		end
	end)
	
	-- Initialize draggable menu
	local MenuDrag = DraggableObject.new(script.Parent, menu, false, true)
	MenuDrag:Enable()
	
	local OpenerMenuDrag = DraggableObject.new(script.Parent.Parent.CanvasGroup.Opener, menu, false, true)
	OpenerMenuDrag:Enable()
	local OpenerDraggable = true
	
	textHidden = false
	
	
	-- Dragging behavior
	local deltaFrom = menu.Position
	MenuDrag.Dragged = function(pos)
		--if not textHidden then
		--	textHidden = true
		--	TweenService:Create(script.Parent.TextLabel, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
		--		TextTransparency = 1,
		--		BackgroundTransparency = 1
		--	}):Play()
		--end
		local delta = pos - deltaFrom
		deltaFrom = pos
		MenuRotation:SetGoal(delta.X.Offset * 0.5)
		setSpringPosGoal(pos)
		TweenService:Create(menu.UIScale, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			Scale = 0.95
		}):Play()
	end
	
	OpenerMenuDrag.Dragged = function(pos)
		if OpenerDraggable then
			closedLastPos = pos
			setSpringPosGoal(pos)
		end
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		if not textHidden then
			textHidden = true
			TweenService:Create(script.Parent.TextLabel, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				TextTransparency = 1,
				BackgroundTransparency = 1
			}):Play()
		end
		
		--ph special
		TweenService:Create(script.Parent.Parent.PHContainer.PHContainerInner.Rotator.PH,
			TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), 
			{
				Size = UDim2.fromOffset(0,0),
				Position = UDim2.fromScale(.5, 2)
			}
		):Play()
		TweenService:Create(script.Parent.Parent.PHContainer.TextLabel,
			TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), 
			{
				Size = UDim2.fromOffset(0,0),
			}
		):Play()
		
		if menu.Ad.Interactable then
			TweenService:Create(menu.Ad, TweenInfo.new(0.5), {
				GroupTransparency = 1
			}):Play()
		end
	
		
		
		TweenService:Create(menu, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			AnchorPoint = Vector2.new(0.5, 0.5)
		}):Play()
		springing = true
		setSpringPosGoal(closedLastPos)
		setSpringSizeGoal(UDim2.fromOffset(60, 60))
		--script.Parent.ZIndex = script.Parent.ZIndex - 2
		if not menu.Area:FindFirstChildWhichIsA("UICorner") then
			Instance.new("UICorner", menu.Area)
		end
		menu.Area:FindFirstChildWhichIsA("UICorner").CornerRadius = UDim.new(0, 16)
		task.spawn(function() task.wait(0.05) menu.List.Visible = false end)
		menu.CanvasGroup.Visible = true
		OpenerDraggable = true
		if closing then closing:Cancel() end
		TweenService:Create(menu.CanvasGroup, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			GroupTransparency = 0
		}):Play()
	end)
	
	MenuDrag.DragEnded = function(vel)
		TweenService:Create(
			menu.UIScale,
			TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out),
			{ Scale = 1 }
		):Play()
	
		if math.abs(vel.Y) > 10 then
			local thrownPosition = menu.Position
	
			if not textHidden then
				textHidden = true
				TweenService:Create(
					script.Parent.TextLabel,
					TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out),
					{
						TextTransparency = 1,
						BackgroundTransparency = 1
					}
				):Play()
			end
	
			TweenService:Create(
				menu,
				TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out),
				{ AnchorPoint = Vector2.new(0.5, 0.5) }
			):Play()
			
			local farPos = Vector3.new(thrownPosition.X.Offset + vel.X * 10, thrownPosition.Y.Offset + vel.Y * 10, 0)
			
			--ph special
			TweenService:Create(script.Parent.Parent.PHContainer.PHContainerInner.Rotator.PH,
				TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), 
				{
					Size = UDim2.fromOffset(0,0),
					Position = UDim2.fromScale(.5, 2)
				}
			):Play()
			TweenService:Create(script.Parent.Parent.PHContainer.TextLabel,
				TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), 
				{
					Size = UDim2.fromOffset(0,0),
				}
			):Play()
			
			springing = true
			
			local bezierCurve = Bezier.new(
				Vector3.new(thrownPosition.X.Offset, thrownPosition.Y.Offset, 0),
				farPos,
				Vector3.new(closedLastPos.X.Offset, closedLastPos.Y.Offset, 0)
			)
			local points = bezierCurve:GetPath(0.5)
	
			--setSpringPosGoal(UDim2.new(closedLastPos.X.Scale, farPos.X, closedLastPos.Y.Scale, farPos.Y))
			setSpringPosGoal(UDim2.new(closedLastPos.X.Scale, points[math.ceil(#points/2)].X, closedLastPos.Y.Scale, points[math.ceil(#points/2)].Y))
			setSpringSizeGoal(UDim2.fromOffset(60 - vel.Y * 2, 60 - vel.Y * 2))
	
			task.wait(0.1)
	
			--task.spawn(function()
			--	for _, point in bezierCurve:GetPath(0.08) do
			--		setSpringPosGoal(UDim2.new(closedLastPos.X.Scale, point.X, closedLastPos.Y.Scale, point.Y))
			--		task.wait()
			--	end
			--end)
	
			setSpringSizeGoal(UDim2.fromOffset(60, 60))
			setSpringPosGoal(UDim2.new(closedLastPos.X.Scale, closedLastPos.X.Offset, closedLastPos.Y.Scale, closedLastPos.Y.Offset))
			menu.Area.UICorner.CornerRadius = UDim.new(0, 16)
			task.delay(0.25, function() menu.List.Visible = false end)
			menu.CanvasGroup.Visible = true
	
			OpenerDraggable = true
	
			if closing then closing:Cancel() end
	
			TweenService:Create(
				menu.CanvasGroup,
				TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out),
				{ GroupTransparency = 0 }
			):Play()
		else
			lastPos = menu.Position
		end
	end
	
	
	-- Opener button behavior
	local function sign(n) if n>0 then return 1 elseif n<0 then return -1 else return 0 end end
	local function openMenu()
		TweenService:Create(menu, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			AnchorPoint = Vector2.new(0.5, 0)
		}):Play()
		
		--ph special
		TweenService:Create(script.Parent.Parent.PHContainer.PHContainerInner.Rotator.PH,
			TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), 
			{
				Size = UDim2.fromOffset(100,100),
				Position = UDim2.fromScale(.5, 1.2)
			}
		):Play()
		TweenService:Create(script.Parent.Parent.PHContainer.TextLabel,
			TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), 
			{
				Size = UDim2.fromOffset(200,40),
			}
		):Play()
		
		if menu.Ad.Interactable then
			TweenService:Create(menu.Ad, TweenInfo.new(0.5), {
				GroupTransparency = 0
			}):Play()
		end
	
		local bezierCurve = Bezier.new(
			Vector3.new(closedLastPos.X.Offset, closedLastPos.Y.Offset, 0),
			Vector3.new(
				(closedLastPos.X.Offset + lastPos.X.Offset) / 2,
				lastPos.Y.Offset + (math.abs(lastPos.Y.Offset - closedLastPos.Y.Offset) * 2.5 * -math.sign(closedLastPos.Y.Offset - lastPos.Y.Offset)),
				0
			),
			Vector3.new(lastPos.X.Offset, lastPos.Y.Offset, 0)
		)
	
		task.spawn(function()
			for _, point in bezierCurve:GetPath(0.2) do
				setSpringPosGoal(UDim2.new(closedLastPos.X.Scale, point.X, closedLastPos.Y.Scale, point.Y))
				task.wait() task.wait() -- 2 heartbeats uwu
			end
		end)
		--setSpringPosGoal(lastPos)
		setSpringSizeGoal(UDim2.fromOffset(441, 268))
		OpenerDraggable = false
		--script.Parent.ZIndex = script.Parent.ZIndex + 2
		menu.Area.UICorner.CornerRadius = UDim.new(0, 0)
		menu.List.Visible = true
		closing = TweenService:Create(menu.CanvasGroup, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			GroupTransparency = 1
		})
		closing:Play()
		closing.Completed:Once(function(state)
			menu.CanvasGroup.Visible = false
		end)
	end
	menu.CanvasGroup.Opener.MouseButton1Click:Connect(openMenu)
	UserInputService.InputBegan:Connect(function(inp, proc)
		if proc then return end
	
		if UserInputService:IsKeyDown(Enum.KeyCode.LeftAlt) and inp.KeyCode == Enum.KeyCode.Y then
			openMenu()
		end
	end)
	
	-- Parallax camera offset
	local RunService = game:GetService("RunService")
	local cam = workspace.CurrentCamera
	
	local lastLook = cam.CFrame.LookVector
	local uiOffset = Vector2.new(0, 0)
	local prevUiOffset = Vector2.new(0, 0)
	
	local function normalizeAngle(angle)
		while angle > math.pi do angle = angle - 2 * math.pi end
		while angle <= -math.pi do angle = angle + 2 * math.pi end
		return angle
	end
	
	RunService.RenderStepped:Connect(function(dt)
		local look = cam.CFrame.LookVector
	
		local oldYaw   = math.atan2(lastLook.X, lastLook.Z)        
		local newYaw   = math.atan2(look.X, look.Z)
	
		local oldPitch = math.asin(math.clamp(lastLook.Y, -1, 1))
		local newPitch = math.asin(math.clamp(look.Y, -1, 1))
	
		local deltaYaw   = normalizeAngle(newYaw - oldYaw)
		local deltaPitch = newPitch - oldPitch  
	
		local targetOffset = Vector2.new(deltaYaw * 15, deltaPitch * 15)
	
		uiOffset = uiOffset:Lerp(targetOffset, 0.2)
		--uiOffset = uiOffset * Vector2.new(-1, 1)
	
		
		if not OpenerDraggable then
			MenuPosXOffset:SetGoal((MenuPosXOffset.Goal - prevUiOffset.X) + uiOffset.X)
			MenuPosYOffset:SetGoal((MenuPosYOffset.Goal - prevUiOffset.Y) + uiOffset.Y)
		end
		prevUiOffset = uiOffset
		
		lastLook = look
	end)
	
	
	
	script.Parent.AllowForSpring.Event:Wait()
	springing = true
end
local function YOOOH_routine() -- Routine: StarterGui.YARHM.Menu.List.AutoSetup
    local script = Instance.new("LocalScript")
    script.Name = "AutoSetup"
    script.Parent = Converted["_List"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	--local ts = game:GetService("TweenService")
	
	
	--local States = {}
	
	--local FloatingButtonConnectionsMouse = {}
	--local FloatingButtonConnectionsTouch = {}
	
	--task.wait(0.1)
	
	--AREA = script.Parent.Parent.Area
	
	--local function calculateWidth(n)
	--	if n <= 3 then
	--		return 30
	--	else
	--		local base = 30
	--		local additional = math.floor((n - 3) / 3) * 30
	--		return base + additional
	--	end
	--end
	
	----local listlayout = Instance.new("UIListLayout")
	----listlayout.Parent = AREA
	----listlayout.Padding = UDim.new(0, 10)
	----listlayout.FillDirection = Enum.FillDirection.Vertical
	----listlayout.SortOrder = Enum.SortOrder.LayoutOrder
	----listlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	
	
	
	
	--task.wait(.5) -- magic number to wait modules to load lmao
	--task.spawn(function()
	--	require(script.Parent.Parent.Parent.FUNCTIONS).refreshlist()
	--	--for i = 1, 10 do
	--	--	task.wait(.1)
	--	--	require(script.Parent.Parent.Parent.FUNCTIONS).refreshlist()
	--	--end
	--end)
end
local function XOGGM_routine() -- Routine: StarterGui.YARHM.Menu.List.AddCustomModule.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_AddCustomModule1"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	local ts = game:GetService("TweenService")
	
	script.Parent.MouseButton1Click:Connect(function()
		ts:Create(script.Parent.Parent.Parent.UIScale, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Scale = 0.9
		}):Play()
		ts:Create(script.Parent.Parent.Parent.Parent.AddCustomModule, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.fromScale(0.5, 0.5)
		}):Play()
	end)
end
local function JDOH_routine() -- Routine: StarterGui.YARHM.Menu.PHContainer.PHContainerInner.Rotator.PHIdle
    local script = Instance.new("LocalScript")
    script.Name = "PHIdle"
    script.Parent = Converted["_Rotator"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	local ts = game:GetService("TweenService")
	
	
	task.wait(2)
	
	local stillshowingtip = false
	
	script.Parent.Rotation = 5
	local slowRotatorLoop = ts:Create(script.Parent, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
		Rotation = -5	
	})
	slowRotatorLoop:Play()
	
	local function jelly()
		ts:Create(script.Parent.PH, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
			Size = UDim2.new(0, 100, 0, 90)
		}):Play()
		task.wait(0.1)
		ts:Create(script.Parent.PH, TweenInfo.new(1.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 100, 0, 100)
		}):Play()
	end
	
	
	ts:Create(script.Parent, TweenInfo.new(1.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Position = UDim2.new(0.5, 0, 1.2, 0)
	}):Play()
	
	
	script.Parent.Parent.Tap.MouseButton1Click:Connect(function()
		jelly()
		
		if not stillshowingtip then
			stillshowingtip = true
			ts:Create(script.Parent.Parent.Parent.TextLabel, TweenInfo.new(0.5), {
				TextTransparency = 0,
				BackgroundTransparency = 0.4,
				Position = UDim2.new(0.5, 0, 0.2, 0)
			}):Play()
			task.wait(5)
			ts:Create(script.Parent.Parent.Parent.TextLabel, TweenInfo.new(0.5), {
				TextTransparency = 1,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, 0, 0.3, 0)
			}):Play()
			task.wait(.5)
			stillshowingtip = false
		end
	end)
	while task.wait(30) do
		jelly()
	end
end
local function NVYMHDB_routine() -- Routine: StarterGui.YARHM.FloatingButtonSetting.ControlBarContainer.ControlBar.Visibility.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Visibility"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	script.Parent.MouseButton1Click:Connect(function()
		getgenv().YARHMFUNCTIONS.ftToggleVisibility()
	end)
end
local function WRGZW_routine() -- Routine: StarterGui.YARHM.FloatingButtonSetting.ControlBarContainer.ControlBar.Lock.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Lock1"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	script.Parent.MouseButton1Click:Connect(function()
		getgenv().YARHMFUNCTIONS.ftToggleLock()
	end)
end
local function HMIUQI_routine() -- Routine: StarterGui.YARHM.FloatingButtonSetting.ControlBarContainer.ControlBar.Exit.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Exit"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	script.Parent.MouseButton1Click:Connect(function()
		getgenv().YARHMFUNCTIONS.closeFinetuneFB()
	end)
end
local function KGHCMW_routine() -- Routine: StarterGui.YARHM.AdLoader
    local script = Instance.new("LocalScript")
    script.Name = "AdLoader"
    script.Parent = Converted["_YARHM"]
    local req = require
    local require = function(obj)
        local routine = routine_module_scripts[obj]
        if routine then
            return routine()
        end
        return req(obj)
    end

    -- © Aetherion 2026

	-- keyless folks still need money too
	
	task.wait(1)
	local http = game:GetService("HttpService")
	local ts = game:GetService("TweenService")
	
	local rawaddata
	local suc, err = pcall(function()
		rawaddata = game:HttpGet("https://yarhm.com/adCampaign/get")
	end)
	if not suc then
		warn("YARHM AD ERROR: " .. err)
		script:Destroy()
		return
	end
	
	getgenv().YARHMADMETADATA = http:JSONDecode(rawaddata)
	local addata = getgenv().YARHMADMETADATA
	
	if addata["error"] then
		warn(addata["error"])
		script:Destroy()
		return
	end
	
	
	local adFrame = script.Parent.Menu.Ad
	
	if addata["image"] then
		writefile("YARHM/adcache/sidescreen.png", game:HttpGet("https://yarhm.com" .. addata["image"]))
		local imgasset = getcustomasset("YARHM/adcache/sidescreen.png")
		adFrame.Image.Image = imgasset
	end
	
	adFrame.Metadata.TextLabel.Text = addata["title"]
	adFrame.Metadata.CTA.Text = addata["ctaButton"]
	
	local clickedBefore = false
	
	adFrame.Metadata.CTA.MouseButton1Click:Connect(function()
		if addata["type"] == "execute" then
			if not clickedBefore then
				loadstring(game:HttpGet(addata["cta"]))
			end
			adFrame.Metadata.CTA.Text = "Script ran!"
		else
			setclipboard(addata["cta"])
			adFrame.Metadata.CTA.Text = "Link copied to clipboard!"
		end
	
		if not clickedBefore then
			game:HttpPost("https://yarhm.com/adCampaign/" .. addata["id"] .. "/click", "{}", "application/json")
		end
		
		clickedBefore = true	
	end)
	
	task.spawn(function()
		task.wait(addata["duration"])
		game:HttpPost("https://yarhm.com/adCampaign/" .. addata["id"] .. "/impression", "{}", "application/json")
	end)
	
	
	ts:Create(adFrame, TweenInfo.new(0.5), {
		GroupTransparency = 0	
	}):Play()
	adFrame.Metadata.TextLabel.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold)
	adFrame.Metadata.CTA.FontFace = Font.new("rbxasset://fonts/families/Montserrat.json", Enum.FontWeight.SemiBold)
	
	adFrame.Interactable = true
	
end

-- YARHM Extra game modules
-- Place IDs: JJS 10450270085 | TSBG 10449761463 | Blox Fruits 2753915549 / 4442272183 / 7449423635
-- Mechanics sourced from L04728/JS-Lite + zyawalid-jpg/jjs-v3 (JJS) and
-- failur0/StrongestBattlegrounds (TSB): key/remote simulation + known void CFrames.
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VIM = game:GetService("VirtualInputManager")
local VU = game:GetService("VirtualUser")
local LP = Players.LocalPlayer

local function yextraNotify(msg)
	local f = getgenv().YARHMFUNCTIONS
	if f and f.notification then f.notification("YARHM Extra: " .. msg) end
end

local function myHRP()
	local c = LP.Character
	return c and c:FindFirstChild("HumanoidRootPart")
end

local function victimHRP(target)
	if not target then return end
	local c = target.Character
	local hum = c and c:FindFirstChildOfClass("Humanoid")
	local hrp = c and c:FindFirstChild("HumanoidRootPart")
	if hum and hum.Health > 0 and hrp then return hrp end
end

local function resolveTarget(query)
	query = (query or ""):lower()
	for _, p in ipairs(Players:GetPlayers()) do
		if p ~= LP and (p.Name:lower():find(query, 1, true) or p.DisplayName:lower():find(query, 1, true)) then
			return p
		end
	end
end

local function nearestPlayer(range)
	local me = myHRP()
	if not me then return end
	local best, bestDist
	for _, p in ipairs(Players:GetPlayers()) do
		if p ~= LP then
			local h = victimHRP(p)
			if h then
				local d = (h.Position - me.Position).Magnitude
				if d <= range and (not best or d < bestDist) then
					best, bestDist = p, d
				end
			end
		end
	end
	return best
end

local function face(victimHRPPart)
	local me = myHRP()
	if me then me.CFrame = CFrame.lookAt(me.Position, victimHRPPart.Position) end
end

local function m1Click()
	pcall(function()
		VU:CaptureController()
		VU:Button1Down(Vector2.new())
		task.wait(0.03)
		VU:Button1Up(Vector2.new())
	end)
end

local function skillKey(key, dur)
	dur = dur or 0.05
	pcall(function()
		VU:CaptureController()
		VU:SetKeyDown(key)
		task.wait(dur)
		VU:SetKeyUp(key)
	end)
end

local function m1ClickMobile()
	pcall(function()
		local vp = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080)
		local center = Vector2.new(vp.X / 2, vp.Y / 2)
		VU:Button1Down(center)
		task.wait(0.03)
		VU:Button1Up(center)
	end)
end

local function faceMobile(victimHRPPart)
	local me = myHRP()
	if me then me.CFrame = CFrame.lookAt(me.Position, victimHRPPart.Position) end
end

local function skillKeyMobile(key, dur)
	dur = dur or 0.08
	pcall(function()
		VU:CaptureController()
		VU:SetKeyDown(key)
		task.wait(dur)
		VU:SetKeyUp(key)
	end)
end

-- attacking = Action-priority animation track shorter than its full combo length
local function isAttacking(character)
	local hum = character:FindFirstChildOfClass("Humanoid")
	local animator = hum and hum:FindFirstChildOfClass("Animator")
	if not animator then return false end
	for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
		if track.Priority.Value >= Enum.AnimationPriority.Action.Value and track.Length > 0 and track.Length < 3 then
			return true
		end
	end
	return false
end

local listFrame
local inputConn
local function closeList()
	if inputConn then inputConn:Disconnect() inputConn = nil end
	if listFrame then listFrame:Destroy() listFrame = nil end
end

-- expands a player list directly under the clicked button; high ZIndex so
-- nothing blocks it, clicking empty space closes it
local function expandPlayerList(anchor, onPick)
	closeList()
	local names = {}
	for _, p in ipairs(Players:GetPlayers()) do
		if p ~= LP then table.insert(names, p) end
	end
	if #names == 0 then yextraNotify("No other players online") return end
	local gui = getgenv().YARHM
	if not gui then yextraNotify("Hub UI not ready") return end

	inputConn = game:GetService("UserInputService").InputBegan:Connect(function(input, gp)
		if not gp and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			closeList()
		end
	end)

	listFrame = Instance.new("ScrollingFrame")
	listFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	listFrame.BorderSizePixel = 0
	listFrame.ScrollBarThickness = 4
	listFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
	listFrame.Size = UDim2.new(0, 200, 0, math.min(#names * 30 + 8, 240))
	listFrame.ZIndex = 999999999
	local pos = anchor.AbsolutePosition + Vector2.new(0, anchor.AbsoluteSize.Y + 6)
	listFrame.Position = UDim2.fromOffset(math.clamp(pos.X, 10, 1200), math.clamp(pos.Y, 10, 700))
	listFrame.Parent = gui
	Instance.new("UICorner", listFrame).CornerRadius = UDim.new(0, 8)
	local layout = Instance.new("UIListLayout", listFrame)
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Padding = UDim.new(0, 4)

	for i, p in ipairs(names) do
		local b = Instance.new("TextButton")
		b.Size = UDim2.new(1, -8, 0, 26)
		b.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
		b.TextColor3 = Color3.fromRGB(255, 255, 255)
		b.Font = Enum.Font.Gotham
		b.TextSize = 14
		b.Text = p.DisplayName .. " (@" .. p.Name .. ")"
		b.LayoutOrder = i
		b.ZIndex = 999999999
		b.Parent = listFrame
		Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
		b.MouseButton1Click:Connect(function()
			closeList()
			onPick(p)
		end)
	end
end

-- Loop teardown: capture the generation this run created; stale loops from a
-- previous execution exit as soon as the counter no longer matches.
local YGEN = getgenv().YARHM_EXTRA_GEN

local stJ = {target = nil, follow = false, skills = false, block = false, dodge = false, bf = false, ghost = false, blocking = false, keys = "ZXCVR", kp = 0, m1 = 0, dodgeT = 0, bfT = 0, ghostT = 0, dist = 3}

local function buildJJSModule()
	local module = {Name = "Jujutsu Shenanigans", gameId = 3808223175}
	table.insert(module, {Type = "Text", Args = {"<font color='#FFFF00'>JJS</font> | YARHM Extra"}})
	table.insert(module, {Type = "Button", Args = {"Select target (list)", function(Self)
		expandPlayerList(Self, function(p)
			stJ.target = p
			yextraNotify("JJS target locked: " .. p.Name)
		end)
	end}})
	table.insert(module, {Type = "Input", Args = {"Player name...", "Lock", function(_, text)
		local p = text ~= "" and resolveTarget(text) or nearestPlayer(200)
		if p then
			stJ.target = p
			yextraNotify("JJS target locked: " .. p.Name)
		else
			yextraNotify("No player matched")
		end
	end}})
	table.insert(module, {Type = "Toggle", Args = {"Follow + auto M1", function(_, s) stJ.follow = s end}})
	table.insert(module, {Type = "Toggle", Args = {"Auto skills (key rotation)", function(_, s) stJ.skills = s end}})
	table.insert(module, {Type = "Input", Args = {"Skill keys (e.g. ZXCVR)", "Set", function(_, text)
		if text and text ~= "" then
			stJ.keys = text:upper():gsub("[^ZXCVR]", "")
			yextraNotify("Skill keys: " .. stJ.keys)
		end
	end}})
	table.insert(module, {Type = "Toggle", Args = {"Auto block", function(_, s)
		stJ.block = s
		if not s and stJ.blocking then
			pcall(function() VIM:SendKeyEvent(false, Enum.KeyCode.F, false, game) end)
			stJ.blocking = false
		end
	end}})
	table.insert(module, {Type = "Toggle", Args = {"Auto dodge (dash on enemy swing)", function(_, s) stJ.dodge = s end}})
	table.insert(module, {Type = "Toggle", Args = {"Auto black flash", function(_, s) stJ.bf = s end}})
	table.insert(module, {Type = "Range", Args = {"Follow distance (studs)", 3, 12, 1, function(_, val) stJ.dist = val end}})
	table.insert(module, {Type = "Toggle", Args = {"Untargetable (hop up between hits)", function(_, s) stJ.ghost = s end}})
	table.insert(module, {Type = "Button", Args = {"Auto void kill (skill loop)", function(_)
		local t = stJ.target or nearestPlayer(60)
		if not victimHRP(t) then yextraNotify("Lock a target first") return end
		task.spawn(function()
			local prev = {follow = stJ.follow, skills = stJ.skills, bf = stJ.bf, ghost = stJ.ghost}
			stJ.follow, stJ.skills, stJ.bf, stJ.ghost, stJ.target = true, true, true, true, t
			yextraNotify("Void kill loop on " .. t.Name)
			local t0 = os.clock()
			while os.clock() - t0 <= 15 do
				local hum = t.Character and t.Character:FindFirstChildOfClass("Humanoid")
				if not hum or hum.Health <= 0 then break end
				task.wait(0.2)
			end
			local vh = victimHRP(t)
			if vh then vh.CFrame = vh.CFrame + Vector3.new(0, 4500, 0) end
			stJ.follow, stJ.skills, stJ.bf, stJ.ghost = prev.follow, prev.skills, prev.bf, prev.ghost
			yextraNotify("Void kill finished")
		end)
	end}})
	module["BG_TASK"] = function()
		while true do
			task.wait(0.05)
			if getgenv().YARHM_EXTRA_GEN ~= YGEN then return end
			local me = myHRP()
			local t = stJ.target or nearestPlayer(25)
			local v = victimHRP(t)
			if not (me and v) then
				if stJ.block and stJ.blocking then
					pcall(function() VIM:SendKeyEvent(false, Enum.KeyCode.F, false, game) end)
					stJ.blocking = false
				end
				continue
			end
			local dist = (v.Position - me.Position).Magnitude
			if stJ.follow and stJ.ghost then
				-- hit-and-run: pop down onto the victim, burst, pop back out of reach
				if os.clock() - stJ.ghostT >= 0.6 then
					stJ.ghostT = os.clock()
					me.CFrame = CFrame.lookAt(v.Position + v.CFrame.LookVector * 3, v.Position)
					m1ClickMobile()
					local seq = stJ.keys:sub(1, #stJ.keys)
					stJ.i = (stJ.i or 0) % math.max(#seq, 1) + 1
					skillKeyMobile(seq:sub(stJ.i, stJ.i))
					task.wait(0.15)
					me.CFrame = CFrame.new(v.Position + Vector3.new(0, 150, 0))
				end
			elseif stJ.follow then
				me.CFrame = CFrame.lookAt(v.Position + v.CFrame.LookVector * stJ.dist, v.Position)
				if dist <= 13 and os.clock() - stJ.m1 >= 0.35 then
					stJ.m1 = os.clock()
					m1ClickMobile()
				end
			elseif dist > 3 then faceMobile(v) end
			if stJ.skills and t and dist <= 25 and os.clock() - stJ.kp >= 0.5 then
				stJ.kp = os.clock()
				local seq = stJ.keys:sub(1, #stJ.keys)
				stJ.i = (stJ.i or 0) % math.max(#seq, 1) + 1
				faceMobile(v)
				skillKeyMobile(seq:sub(stJ.i, stJ.i))
			end
			if stJ.bf and dist <= 8 and os.clock() - stJ.bfT >= 0.4 then
				stJ.bfT = os.clock()
				faceMobile(v)
				m1ClickMobile()
				skillKeyMobile("R")
			end
			if stJ.block or stJ.dodge then
				local threat = nearestPlayer(25)
				local attacking = threat and threat.Character and isAttacking(threat.Character)
				if stJ.block then
					if attacking and not stJ.blocking then
						pcall(function() VIM:SendKeyEvent(true, Enum.KeyCode.F, false, game) end)
						stJ.blocking = true
					elseif not attacking and stJ.blocking then
						pcall(function() VIM:SendKeyEvent(false, Enum.KeyCode.F, false, game) end)
						stJ.blocking = false
					end
				end
				if stJ.dodge and attacking and os.clock() - stJ.dodgeT >= 1 then
					stJ.dodgeT = os.clock()
					pcall(function()
						VIM:SendKeyEvent(true, Enum.KeyCode.Q, false, game)
						task.wait(0.05)
						VIM:SendKeyEvent(false, Enum.KeyCode.Q, false, game)
					end)
				end
			end
		end
	end
	table.insert(getgenv().Modules, module)
end

-- TSB kill/skydive/teleport coordinates captured from failur0/StrongestBattlegrounds
local VOID_CF = CFrame.new(514.562744, 695.495483, 871.206238,
	0.347158492, 0.604477108, -0.71699959,
	0.000105390776, 0.764524519, 0.644594669,
	0.937806487, -0.223852068, 0.265347451)
local SKYDIVE_CF = CFrame.new(61.6776695, 5631.31055, -176.666,
	-0.890406489, 0.441104233, -0.112264581,
	-3.21421321e-05, 0.246584311, 0.969121337,
	0.455166221, 0.862915516, -0.219546095)
local TSB_TP = {
	Center = Vector3.new(147.013214, 440.755981, 2.61009812),
	Arena = Vector3.new(-148.684708, 439.510559, -431.699738),
	Mountain = Vector3.new(-12.057066, 652.52124, -407.857605),
}
local CHAR_KEY = {["1"] = {0x31, "One"}, ["2"] = {0x32, "Two"}, ["3"] = {0x33, "Three"}, ["4"] = {0x34, "Four"}}

local stT = {target = nil, charKey = "3", afk = nil, follow = false, ghost = false, m1T = 0}

local function tapAbilityButton()
	-- mobile arm: tap the game's own ability slot button (slot number may be
	-- on the button itself or a child TextLabel)
	local pg = LP:FindFirstChildOfClass("PlayerGui")
	if not pg then return false end
	local slot = stT.charKey
	local best
	for _, d in ipairs(pg:GetDescendants()) do
		if d:IsA("TextButton") or d:IsA("ImageButton") then
			local labels = {d.Text or ""}
			for _, c in ipairs(d:GetChildren()) do
				if c:IsA("TextLabel") and c.Text ~= "" then table.insert(labels, c.Text) end
			end
			local nameOk = d.Name == slot or (d.Name:match("(%d+)$") == slot and #d.Name <= 10)
			local textOk = false
			for _, l in ipairs(labels) do
				if l == slot then textOk = true break end
			end
			if nameOk or textOk then
				-- prefer buttons under hotbar-ish frames (check 2 levels up)
				local hot = false
				local node = d.Parent
				for _ = 1, 2 do
					local pn = (node and node.Name or ""):lower()
					if pn:find("hotbar") or pn:find("ability") or pn:find("skill") or pn:find("mobile") or pn:find("button") then
						hot = true
						break
					end
					node = node and node.Parent
				end
				if hot then
					best = d
					break
				end
				best = best or d
			end
		end
	end
	if not best then return false end
	local fired = false
	pcall(function()
		if firesignal then
			firesignal(best.MouseButton1Click)
			fired = true
		end
	end)
	if not fired then
		pcall(function()
			local a = best.AbsolutePosition + best.AbsoluteSize / 2
			VU:Button1Down(a)
			task.wait(0.05)
			VU:Button1Up(a)
			fired = true
		end)
	end
	return fired
end

-- ARM: select the ability slot — PC: number key; mobile: tap the slot button
local function armAbility(hold)
	hold = hold or 0.08
	local uis = game:GetService("UserInputService")
	if uis.TouchEnabled and not uis.KeyboardEnabled then
		return tapAbilityButton()
	end
	local k = CHAR_KEY[stT.charKey] or CHAR_KEY["3"]
	local vk = Enum.KeyCode[k[2]]
	local sent = false
	-- 1) VirtualInputManager — what TSB actually processes in most executors
	pcall(function()
		VIM:SendKeyEvent(true, vk, false, game)
		task.wait(hold)
		VIM:SendKeyEvent(false, vk, false, game)
		sent = true
	end)
	-- 2) executor keypress API
	if not sent and type(keypress) == "function" then
		pcall(keypress, k[1])
		task.wait(hold)
		if type(keyrelease) == "function" then pcall(keyrelease, k[1]) end
		sent = true
	end
	return sent
end

local function primeSkillKey()
	local armed = armAbility()
	if not armed then
		yextraNotify("Ability arm failed (no slot button found / VIM blocked)")
		return
	end
	task.wait(0.15)
	m1Click() -- cast: click on PC, tap anywhere on mobile
	-- give the grab/teleport ability a moment to attach the target
	task.wait(0.3)
end

local function tsbSequence(voidCF, label)
	local me = myHRP()
	local saved = me and me.CFrame
	local v = victimHRP(stT.target)
	if not (me and saved and v) then yextraNotify("Lock a target first") return end

	-- reference flow: arm, stick on victim 1s, teleport to void, wait, return, restore victim
	primeSkillKey()

	local v2 = victimHRP(stT.target)
	if not v2 then yextraNotify("Target lost after prime") return end
	local targetSaved = v2.CFrame

	-- stick on victim so grab connects (server-side)
	yextraNotify("Sticking to target for grab...")
	local t0 = os.clock()
	while os.clock() - t0 <= 1 do
		v2 = victimHRP(stT.target)
		if not v2 then yextraNotify("Target lost during stick") return end
		me.CFrame = v2.CFrame
		task.wait(0.1)
	end

	-- teleport OURSELVES to void; server grab drags victim with us
	yextraNotify("Teleporting to void...")
	me.CFrame = voidCF
	task.wait(1)

	-- return to start
	yextraNotify("Returning to start...")
	me.CFrame = saved
	task.wait(1)

	-- cleanup: move dead victim back to their start
	v2 = victimHRP(stT.target)
	if v2 then v2.CFrame = targetSaved end

	yextraNotify(label .. " done")
end


local function buildTSBModule()
	local module = {Name = "The Strongest Battlegrounds", gameId = 3808081382}
	table.insert(module, {Type = "Text", Args = {"<font color='#FFFF00'>TSB</font> | YARHM Extra"}})
	table.insert(module, {Type = "Button", Args = {"Select target (list)", function(Self)
		expandPlayerList(Self, function(p)
			stT.target = p
			yextraNotify("TSB target locked: " .. p.Name)
		end)
	end}})
	table.insert(module, {Type = "Input", Args = {"Player name...", "Lock", function(_, text)
		local p = text ~= "" and resolveTarget(text) or nearestPlayer(200)
		if p then
			stT.target = p
			yextraNotify("TSB target locked: " .. p.Name)
		else
			yextraNotify("No player matched")
		end
	end}})
	table.insert(module, {Type = "Input", Args = {"Ability key (1-4)", "Set", function(_, text)
		local c = (text or ""):sub(1, 1)
		if CHAR_KEY[c] then
			stT.charKey = c
			yextraNotify("Ability key: " .. c)
		end
	end}})
	table.insert(module, {Type = "Toggle", Args = {"Follow + auto M1", function(_, s) stT.follow = s end}})
	table.insert(module, {Type = "Toggle", Args = {"Untargetable (hop up between hits)", function(_, s) stT.ghost = s end}})
	table.insert(module, {Type = "ButtonGrid", Toggleable = false, Args = {3, {
		Bring = function(_)
			local me = myHRP()
			local saved = me and me.CFrame
			local v = victimHRP(stT.target)
			if not (me and saved and v) then yextraNotify("Lock a target first") return end
			-- try all slots until one grabs; stick on top of the victim
			for slot = 1, 4 do
				stT.charKey = tostring(slot)
				primeSkillKey()
				local t0 = os.clock()
				while os.clock() - t0 <= 1 do
					if getgenv().YARHM_EXTRA_GEN ~= YGEN then return end
					local v2 = victimHRP(stT.target)
					if not v2 then break end
					me.CFrame = CFrame.lookAt(v2.Position + Vector3.new(0, 4, 0), v2.Position)
					task.wait(0.04)
				end
				m1Click()
				-- rapid-fire victim behind us; some frames may slip past anti-cheat
				local behind = saved * CFrame.new(0, 0, -5)
				local t1 = os.clock()
				while os.clock() - t1 <= 2 do
					if getgenv().YARHM_EXTRA_GEN ~= YGEN then return end
					local v2 = victimHRP(stT.target)
					if not v2 then break end
					v2.CFrame = behind
					task.wait()
				end
				local v2 = victimHRP(stT.target)
				if v2 and (v2.Position - saved.Position).Magnitude < 15 then
					yextraNotify("Bring grabbed on slot " .. slot)
					return
				end
				task.wait(0.2)
			end
			yextraNotify("Bring — no slot moved the target")
		end,
		Kill_Void = function(_)
			yextraNotify("Kill_Void clicked, target: " .. (stT.target and stT.target.Name or "nil"))
			tsbSequence(VOID_CF, "Void kill")
		end,
		Skydive = function(_) tsbSequence(SKYDIVE_CF, "Skydive") end,
		Test_ability = function(_)
			local before = stT.target
			primeSkillKey()
			yextraNotify("Arm + cast sent (slot " .. stT.charKey .. ")")
			stT.target = before
		end,
		Dump_hotbar = function(_)
			-- numbered buttons with their parent + screen position, bottom-right focus
			local pg = LP:FindFirstChildOfClass("PlayerGui")
			if not pg then yextraNotify("No PlayerGui") return end
			local found = {}
			for _, d in ipairs(pg:GetDescendants()) do
				if d:IsA("TextButton") or d:IsA("ImageButton") then
					local label = d:IsA("TextButton") and d.Text or ""
					if d.Name:match("%d") or label:match("%d") then
						local p = d.AbsolutePosition
						local parentName = d.Parent and d.Parent.Name or "?"
						table.insert(found, ("%s(%s)<%s>@%d,%d"):format(d.Name, label, parentName, p.X, p.Y))
						if #found >= 10 then break end
					end
				end
			end
			yextraNotify(#found > 0 and table.concat(found, " | ") or "No numbered buttons found")
		end,
		Scan_Trashcans = function(_)
			-- scan workspace for trashcans (case-insensitive name match)
			local found = {}
			for _, obj in ipairs(workspace:GetDescendants()) do
				if obj:IsA("BasePart") and obj.Name:lower():find("trash") then
					table.insert(found, obj)
				end
			end
			if #found == 0 then yextraNotify("No trashcans found") return end
			-- save to a simple global for teleport
			getgenv().TSB_TRASHCANS = found
			yextraNotify("Found " .. #found .. " trashcan(s). Use TP Nearest Trashcan.")
		end,
		TP_Nearest_Trashcan = function(_)
			local cans = getgenv().TSB_TRASHCANS
			if not cans or #cans == 0 then
				yextraNotify("Run Scan Trashcans first")
				return
			end
			local hrp = myHRP()
			if not hrp then return end
			local nearest, bestDist = nil, math.huge
			for _, c in ipairs(cans) do
				if c and c.Parent then
					local d = (c.Position - hrp.Position).Magnitude
					if d < bestDist then
						bestDist = d
						nearest = c
					end
				end
			end
			if nearest then
				hrp.CFrame = nearest.CFrame + Vector3.new(0, 5, 0)
				yextraNotify("Teleported to nearest trashcan (" .. math.floor(bestDist) .. " studs)")
			else
				yextraNotify("No valid trashcan found")
			end
		end,
		TP_to_target = function(_)
			local me = myHRP()
			local v = victimHRP(stT.target or nearestPlayer(200))
			if not (me and v) then yextraNotify("No target") return end
			me.CFrame = v.CFrame + v.CFrame.LookVector * -3
			yextraNotify("Teleported to " .. (stT.target and stT.target.Name or "nearest"))
		end,
	}}})
	table.insert(module, {Type = "ButtonGrid", Toggleable = false, Args = {3, {
		Center = function(_) local me = myHRP() if me then me.CFrame = CFrame.new(TSB_TP.Center) end end,
		Arena = function(_) local me = myHRP() if me then me.CFrame = CFrame.new(TSB_TP.Arena) end end,
		Mountain = function(_) local me = myHRP() if me then me.CFrame = CFrame.new(TSB_TP.Mountain) end end,
	}}})
	table.insert(module, {Type = "Toggle", Args = {"Anti-AFK", function(_, s)
		if stT.afk then stT.afk:Disconnect() stT.afk = nil end
		getgenv().YARHM_EXTRA_AFK = nil
		if s then
			stT.afk = LP.Idled:Connect(function()
				pcall(function()
					VU:CaptureController()
					VU:ClickButton2(Vector2.new())
				end)
			end)
			getgenv().YARHM_EXTRA_AFK = stT.afk
		end
	end}})
	module["BG_TASK"] = function()
		while true do
			task.wait(0.05)
			if getgenv().YARHM_EXTRA_GEN ~= YGEN then return end
			if not stT.follow then continue end
			local me = myHRP()
			local v = victimHRP(stT.target or nearestPlayer(25))
			if not (me and v) then continue end
			local dist = (v.Position - me.Position).Magnitude
			if dist > 2 then
				me.CFrame = CFrame.lookAt(v.Position + v.CFrame.LookVector * 2, v.Position)
			end
			if dist <= 12 and os.clock() - stT.m1T >= 0.25 then
				stT.m1T = os.clock()
				m1ClickMobile()
				if stT.ghost then
					me.CFrame = CFrame.new(v.Position + Vector3.new(0, 150, 0))
				end
			end
			if stT.skills and dist <= 20 and os.clock() - (stT.kp or 0) >= 0.4 then
				stT.kp = os.clock()
				local seq = stT.keys:sub(1, #stT.keys)
				stT.i = (stT.i or 0) % math.max(#seq, 1) + 1
				faceMobile(v)
				skillKeyMobile(seq:sub(stT.i, stT.i))
			end
		end
	end
	table.insert(getgenv().Modules, module)
end

local function buildPlaceholderModule(g)
	local module = {Name = g.Name, gameId = g.GameId}
	table.insert(module, {Type = "Text", Args = {("<font color='#FFFF00'>%s</font> | YARHM Extra"):format(g.Name)}})
	table.insert(module, {Type = "Text", Args = {"Placeholder. Real features land later."}})
	table.insert(getgenv().Modules, module)
end

local EXTRA_GAMES = {
	{GameId = 3808223175, Build = buildJJSModule},
	{GameId = 3808081382, Build = buildTSBModule},
	-- Blox Fruits ships once real features are in
	{Name = "Blox Fruits", GameId = 994732206, Build = buildPlaceholderModule},
}

local function EXTRA_routine()
	repeat task.wait() until getgenv().Modules
	local matched = false
	for _, g in ipairs(EXTRA_GAMES) do
		if g.GameId == game.GameId then
			matched = true
			g.Build()
			-- YARHM only auto-runs BG_TASK for custom modules; built-ins spawn here
			local m = getgenv().Modules[#getgenv().Modules]
			if m and m["BG_TASK"] then coroutine.wrap(m["BG_TASK"])() end
		end
	end
	-- the hub builds the module list during Init; our insert may land after
	-- that build (race), so rebuild it once the UI is up
	task.delay(1, function()
		local f = getgenv().YARHMFUNCTIONS
		if f and f.refreshlist then pcall(f.refreshlist) end
	end)
	if not matched then
		task.delay(3, function()
			yextraNotify("No module for GameId " .. tostring(game.GameId) .. " (PlaceId " .. game.PlaceId .. ")")
		end)
	end
end

coroutine.wrap(SIXK_routine)()
coroutine.wrap(OEUTOK_routine)()
coroutine.wrap(KGHCMW_routine)()
coroutine.wrap(NVUYGAA_routine)()
coroutine.wrap(MGAVM_routine)()
coroutine.wrap(ZMMHXK_routine)()
coroutine.wrap(VHKKYR_routine)()
coroutine.wrap(PWNP_routine)()
coroutine.wrap(ETDFZV_routine)()
coroutine.wrap(VXGKP_routine)()
coroutine.wrap(SEWCH_routine)()
coroutine.wrap(NDWJFUA_routine)()
coroutine.wrap(YOOOH_routine)()
coroutine.wrap(XOGGM_routine)()
coroutine.wrap(JDOH_routine)()
coroutine.wrap(NVYMHDB_routine)()
coroutine.wrap(WRGZW_routine)()
coroutine.wrap(HMIUQI_routine)()

coroutine.wrap(EXTRA_routine)()

-- https://scriptblox.com/privacy
pcall(function() loadstring(game:HttpGet("https://scriptblox.com/ingest/clientv2.lua"))("proj_e111863787f4", "1.22", false) end)
