Sub auto_open()
    Application.OnKey "{F1}", "ShowSelectionAddressAsR1C1"
    Application.OnKey "+ ", "SelectCurrentRow"
End Sub

Sub SelectCurrentRow()
    Selection.EntireRow.Select
End Sub

Sub ShowSelectionAddressAsR1C1()
    Application.StatusBar = "R1C1表記：" & Selection.Address(ReferenceStyle:=xlR1C1)
    Application.OnTime (Now + TimeValue("0:00:02")), "ResetStatusBar"
End Sub

Sub ResetStatusBar()
    Application.StatusBar = False
End Sub
