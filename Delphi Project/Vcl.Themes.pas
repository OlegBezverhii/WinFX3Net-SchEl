//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.Themes;

interface

uses
  SysUtils, Classes, System.Win.Registry, Vcl.Graphics, System.UIConsts, Vcl.Themes;

type
  TThemedElement = (teButton, teClock, teComboBox, teDatePicker, teEdit, teExplorerBar, teFlyOut, teHeader, teLink, teListView, teMenu, teMenuBand, teMonthCal, teNavigation, tePage, teProgress, teRebar, teScrollBar, teSpin, teStartPanel, teStatus, teTab, teTaskBand, teTaskBar, teTaskDialog, teTextStyle, teToolBar, teToolTip, teTrackBar, teTrayNotify, teTreeview, teWindow, teCategoryButtons, teCategoryPanelGroup, teCheckListBox, teControlBar, teDataNavButtons, teGrid, teHint, tePanel, teTabSet, teTextLabel, teMPlayerButtons, teToggleSwitch, teSearchIndicators);
  TThemedButton = (tbButtonDontCare, tbButtonRoot, tbPushButtonNormal, tbPushButtonHot, tbPushButtonPressed, tbPushButtonDisabled, tbPushButtonDefaulted, tbPushButtonDefaultedAnimating, tbRadioButtonUncheckedNormal, tbRadioButtonUncheckedHot, tbRadioButtonUncheckedPressed, tbRadioButtonUncheckedDisabled, tbRadioButtonCheckedNormal, tbRadioButtonCheckedHot, tbRadioButtonCheckedPressed, tbRadioButtonCheckedDisabled, tbCheckBoxUncheckedNormal, tbCheckBoxUncheckedHot, tbCheckBoxUncheckedPressed, tbCheckBoxUncheckedDisabled, tbCheckBoxCheckedNormal, tbCheckBoxCheckedHot, tbCheckBoxCheckedPressed, tbCheckBoxCheckedDisabled, tbCheckBoxMixedNormal, tbCheckBoxMixedHot, tbCheckBoxMixedPressed, tbCheckBoxMixedDisabled, tbCheckBoxImplicitNormal, tbCheckBoxImplicitHot, tbCheckBoxImplicitPressed, tbCheckBoxImplicitDisabled, tbCheckBoxExcludedNormal, tbCheckBoxExcludedHot, tbCheckBoxExcludedPressed, tbCheckBoxExcludedDisabled, tbGroupBoxNormal, tbGroupBoxDisabled, tbUserButton, tbCommandLinkNormal, tbCommandLinkHot, tbCommandLinkPressed, tbCommandLinkDisabled, tbCommandLinkDefaulted, tbCommandLinkDefaultedAnimating, tbCommandLinkGlyphNormal, tbCommandLinkGlyphHot, tbCommandLinkGlyphPressed, tbCommandLinkGlyphDisabled, tbCommandLinkGlyphDefaulted);
  TThemedCategoryButtons = (tcbCategoryButtonsDontCare, tcbCategoryButtonsRoot, tcbBackground, tcbCategoryNormal, tcbCategorySelected, tcbButtonNormal, tcbButtonHot, tcbButtonSelected, tcbCategoryGlyphOpened, tcbCategoryGlyphClosed, tcbCategoryChevronOpened, tcbCategoryChevronClosed);
  TThemedCategoryPanelGroup = (tcpCategoryPanelGroupDontCare, tcpCategoryPanelGroupRoot, tcpBackground, tcpGradientHeader, tcpThemedHeader, tcpChevronOpenedNormal, tcpChevronOpenedHot, tcpChevronOpenedPressed, tcpChevronClosedNormal, tcpChevronClosedHot, tcpChevronClosedPressed, tcpChevronClosedLeftNormal, tcpChevronClosedLeftHot, tcpChevronClosedLeftPressed, tcpThemedChevronOpenedNormal, tcpThemedChevronOpenedHot, tcpThemedChevronOpenedPressed, tcpThemedChevronClosedNormal, tcpThemedChevronClosedHot, tcpThemedChevronClosedPressed);
  TThemedCheckListBox = (tclCheckListBoxDontCare, tclCheckListBoxRoot, tclListItemNormal, tclListItemDisabled, tclHeaderItemNormal, tclHeaderItemDisabled);
  TThemedControlBar = (tcbControlBarDontCare, tcbControlBarRoot, tcbGradientItemFrame);
  TThemedClock = (tcClockDontCare, tcClockRoot, tcTimeNormal, tcTimeHot, tcTimePressed);
  TThemedComboBox = (tcComboBoxDontCare, tcComboBoxRoot, tcDropDownButtonNormal, tcDropDownButtonHot, tcDropDownButtonPressed, tcDropDownButtonDisabled, tcBackground, tcTransparentBackgroundNormal, tcTransparentBackgroundHot, tcTransparentBackgroundDisabled, tcTransparentBackgroundFocused, tcBorderNormal, tcBorderHot, tcBorderFocused, tcBorderDisabled, tcReadOnlyNormal, tcReadOnlyHot, tcReadOnlyPressed, tcReadOnlyDisabled, tcDropDownButtonRightNormal, tcDropDownButtonRightHot, tcDropDownButtonRightPressed, tcDropDownButtonRightDisabled, tcDropDownButtonLeftNormal, tcDropDownButtonLeftHot, tcDropDownButtonLeftPressed, tcDropDownButtonLeftDisabled, tcCueBannerNormal, tcCueBannerHot, tcCueBannerPressed, tcCueBannerDisabled);
  TThemedDatePicker = (tdpDatePickerDontCare, tdbDatePickerRoot, tdbDateTextNormal, tdbDateTextDisabled, tdbDateTextSelected, tdbDateBorderNormal, tdbDateBorderHot, tdbDateBorderFocused, tdbDateBorderDisabled, tdbShowCalendarButtonRightNormal, tdbShowCalendarButtonRightHot, tdbShowCalendarButtonRightPressed, tdbShowCalendarButtonRightDisabled);
  TThemedEdit = (teEditDontCare, teEditRoot, teEditTextNormal, teEditTextHot, teEditTextSelected, teEditTextDisabled, teEditTextFocused, teEditTextReadOnly, teEditTextAssist, teEditCaret, teBackgroundNormal, teBackgroundHot, teBackgroundDisabled, teBackgroundFocused, teBackgroundReadOnly, teBackgroundAssist, tePassword, teBackgroundWithBorderNormal, teBackgroundWithBorderHot, teBackgroundWithBorderDisabled, teBackgroundWithBorderFocused, teEditBorderNoScrollNormal, teEditBorderNoScrollHot, teEditBorderNoScrollFocused, teEditBorderNoScrollDisabled, teEditBorderHScrollNormal, teEditBorderHScrollHot, teEditBorderHScrollFocused, teEditBorderHScrollDisabled, teEditBorderVScrollNormal, teEditBorderVScrollHot, teEditBorderVScrollFocused, teEditBorderVScrollDisabled, teEditBorderHVScrollNormal, teEditBorderHVScrollHot, teEditBorderHVScrollFocused, teEditBorderHVScrollDisabled);
  TThemedExplorerBar = (tebExplorerBarDontCare, tebExplorerBarRoot, tebHeaderBackgroundNormal, tebHeaderBackgroundHot, tebHeaderBackgroundPressed, tebHeaderCloseNormal, tebHeaderCloseHot, tebHeaderClosePressed, tebHeaderPinNormal, tebHeaderPinHot, tebHeaderPinPressed, tebHeaderPinSelectedNormal, tebHeaderPinSelectedHot, tebHeaderPinSelectedPressed, tebIEBarMenuNormal, tebIEBarMenuHot, tebIEBarMenuPressed, tebNormalGroupBackground, tebNormalGroupCollapseNormal, tebNormalGroupCollapseHot, tebNormalGroupCollapsePressed, tebNormalGroupExpandNormal, tebNormalGroupExpandHot, tebNormalGroupExpandPressed, tebNormalGroupHead, tebSpecialGroupBackground, tebSpecialGroupCollapseNormal, tebSpecialGroupCollapseHot, tebSpecialGroupCollapsePressed, tebSpecialGroupExpandNormal, tebSpecialGroupExpandHot, tebSpecialGroupExpandPressed, tebSpecialGroupHead);
  TThemedFlyOut = (tfFlyOutDontCare, tfFlyOutRoot, tfFlyOutHeader, tfFlyOutBodyNormal, tfFlyOutBodyEmphasized, tfFlyOutLabelNormal, tfFlyOutLabelSlected, tfFlyOutLabelEmphasized, tfFlyOutLabelDisabled, tfFlyOutLinkNormal, tfFlyOutLinkHover, tfFlyOutDivider, tfFlyOutWindow, tfFlyOutLinkArea, tfFlyOutLinkHeaderNormal, tfFlyOutLinkHeaderHover);
  TThemedGrid = (tgGridDontCare, tgGridRoot, tgCellNormal, tgCellSelected, tgCellRowSelectedLeft, tgCellRowSelectedCenter, tgCellRowSelectedRight, tgFixedCellNormal, tgFixedCellHot, tgFixedCellPressed, tgGradientCellNormal, tgGradientCellSelected, tgGradientCellRowSelectedLeft, tgGradientCellRowSelectedCenter, tgGradientCellRowSelectedRight, tgGradientFixedCellNormal, tgGradientFixedCellHot, tgGradientFixedCellPressed, tgClassicCellNormal, tgClassicCellSelected, tgClassicCellRowSelectedLeft, tgClassicCellRowSelectedCenter, tgClassicCellRowSelectedRight, tgClassicFixedCellNormal, tgClassicFixedCellHot, tgClassicFixedCellPressed, tgDropDownButtonNormal, tgDropDownButtonHot, tgDropDownButtonPressed, tgDropDownButtonDisabled, tgEllipsisButtonNormal, tgEllipsisButtonHot, tgEllipsisButtonPressed, tgIndicatorArrow, tgIndicatorEdit, tgIndicatorInsert, tgIndicatorMultiDot, tgIndicatorMultiArrow);
  TThemedHeader = (thHeaderDontCare, thHeaderRoot, thHeaderItemNormal, thHeaderItemHot, thHeaderItemPressed, thHeaderItemLeftNormal, thHeaderItemLeftHot, thHeaderItemLeftPressed, thHeaderItemRightNormal, thHeaderItemRightHot, thHeaderItemRightPressed, thHeaderSortArrowSortedUp, thHeaderSortArrowSortedDown, thHeaderDropDownNormal, thHeaderDropDownSoftHot, thHeaderDropDownHot, thHeaderDropDownFilterNormal, thHeaderDropDownFilterSoftHot, thHeaderDropDownFilterHot, thHeaderOverflowNormal, thHeaderOverflowHot);
  TThemedHint = (thHintDontCare, thHintRoot, thHintNormal, thHintBalloon);
  TThemedListview = (tlListviewDontCare, tlListviewRoot, tlListItemNormal, tlListItemHot, tlListItemSelected, tlListItemDisabled, tlListItemSelectedNotFocus, tlListItemHotSelected, tlListGroup, tlListDetail, tlListSortDetail, tlEmptyText, tlGroupHeaderOpen, tlGroupHeaderOpenHot, tlGroupHeaderOpenSelected, tlGroupHeaderOpenSelectedHot, tlGroupHeaderOpenSelectedNotFocused, tlGroupHeaderOpenSelectedNotFocusedHot, tlGroupHeaderOpenMixedSelection, tlGroupHeaderOpenMixedSelectionHot, tlGroupHeaderClose, tlGroupHeaderCloseHot, tlGroupHeaderCloseSelected, tlGroupHeaderCloseSelectedHot, tlGroupHeaderCloseSelectedNotFocused, tlGroupHeaderCloseSelectedNotFocusedHot, tlGroupHeaderCloseMixedSelection, tlGroupHeaderCloseMixedSelectionHot, tlGroupHeaderLineOpen, tlGroupHeaderLineOpenHot, tlGroupHeaderLineOpenSelected, tlGroupHeaderLineOpenSelectedHot, tlGroupHeaderLineOpenSelectedNotFocused, tlGroupHeaderLineOpenSelectedNotFocusedHot, tlGroupHeaderLineOpenMixedSelection, tlGroupHeaderLineOpenMixedSelectionHot, tlGroupHeaderLineClose, tlGroupHeaderLineCloseHot, tlGroupHeaderLineCloseSelected, tlGroupHeaderLineCloseSelectedHot, tlGroupHeaderLineCloseSelectedNotFocused, tlGroupHeaderLineCloseSelectedNotFocusedHot, tlGroupHeaderLineCloseMixedSelection, tlGroupHeaderLineCloseMixedSelectionHot, tlExpandButtonNormal, tlExpandButtonHover, tlExpandButtonPushed, tlCollapseButtonNormal, tlCollapseButtonHover, tlCollapseButtonPushed, tlColumnDetail);
  TThemedLink = (tlLinkDontCare, tlLinkRoot, tlLinkNormal, tlLinkLinked);
  TThemedMenu = (tmMenuDontCare, tmMenuRoot, tmMenuItemNormal, tmMenuItemSelected, tmMenuItemDemoted, tmMenuDropDown, tmMenuBarItem, tmMenuBarDropDown, tmChevron, tmSeparator, tmMenuBarBackgroundActive, tmMenuBarBackgroundInactive, tmMenuBarItemNormal, tmMenuBarItemHot, tmMenuBarItemPushed, tmMenuBarItemDisabled, tmMenuBarItemDisabledHot, tmMenuBarItemDisabledPushed, tmPopupBackground, tmPopupBorders, tmPopupCheckNormal, tmPopupCheckDisabled, tmPopupBulletNormal, tmPopupBulletDisabled, tmPopupCheckBackgroundDisabled, tmPopupCheckBackgroundNormal, tmPopupCheckBackgroundBitmap, tmPopupGutter, tmPopupItemNormal, tmPopupItemHot, tmPopupItemDisabled, tmPopupItemDisabledHot, tmPopupSeparator, tmPopupSubMenuNormal, tmPopupSubMenuDisabled, tmSystemCloseNormal, tmSystemCloseDisabled, tmSystemMaximizeNormal, tmSystemMaximizeDisabled, tmSystemMinimizeNormal, tmSystemMinimizeDisabled, tmSystemRestoreNormal, tmSystemRestoreDisabled);
  TThemedMenuBand = (tmbMenuBandDontCare, tmbMenuBandRoot, tmbNewAppButtonNormal, tmbNewAppButtonHot, tmbNewAppButtonPressed, tmbNewAppButtonDisabled, tmbNewAppButtonChecked, tmbNewAppButtonNotChecked, tmbSeparatorNormal, tmbSeparatorHot, tmbSeparatorPressed, tmbSeparatorDisabled, tmbSeparatorChecked, tmbSeparatorNotChecked);
  TThemedMonthCal = (tmcMonthCalDontCare, tmcMonthCalRoot, tmcBackground, tmcBorders, tmcGridBackground, tmcColHeaderSplitter, tmcGridCellBackgroundSelected, tmcGridCellBackgroundHot, tmcGridCellBackgroundSelectedHot, tmcGridCellBackgroundSelectedNotFocused, tmcGridCellBackgroundToday, tmcGridCellHot, tmcGridCellHasState, tmcGridCellHasStateHot, tmcGridCellToday, tmcGridCellUpperHot, tmcGridCellUpperHasState, tmcGridCellUpperHasStateHot, tmcTrailingGridCellHot, tmcTrailingGridCellHasState, tmcTrailingGridCellHasStateHot, tmcTrailingGridCellToday, tmcTrailingGridCellUpperHot, tmcTrailingGridCellUpperHasState, tmcTrailingGridCellUpperHasStateHot, tmcNavNextNormal, tmcNavNextHot, tmcNavNextPressed, tmcNavNextDisabled, tmcNavPrevNormal, tmcNavPrevHot, tmcNavPrevPressed, tmcNavPrevDisabled);
  TThemedMPlayerButtons = (tmpbPlayNormal, tmpbPlayHot, tmpbPlayPressed, tmpbPlayDisabled, tmpbPauseNormal, tmpbPauseHot, tmpbPausePressed, tmpbPauseDisabled, tmpbStopNormal, tmpbStopHot, tmpbStopPressed, tmpbStopDisabled, tmpbNextNormal, tmpbNextHot, tmpbNextPressed, tmpbNextDisabled, tmpbPrevNormal, tmpbPrevHot, tmpbPrevPressed, tmpbPrevDisabled, tmpbStepNormal, tmpbStepHot, tmpbStepPressed, tmpbStepDisabled, tmpbBackNormal, tmpbBackHot, tmpbBackPressed, tmpbBackDisabled, tmpbRecordNormal, tmpbRecordHot, tmpbRecordPressed, tmpbRecordDisabled, tmpbEjectNormal, tmpbEjectHot, tmpbEjectPressed, tmpbEjectDisabled);
  TThemedNavigation = (tnNavigatrionDontCare, tnNavigatrionRoot, tnBackButtonNormal, tnBackButtonHot, tnBackButtonPressed, tnBackButtonDisabled, tnForwardButtonNormal, tnForwardButtonHot, tnForwardButtonPressed, tnForwardButtonDisabled, tnMenuButtonNormal, tnMenuButtonHot, tnMenuButtonPressed, tnMenuButtonDisabled);
  TThemedDataNavButtons = (tdnbDontCare, tdnbNavigatorRoot, tdnbFirstNormal, tdnbFirstHot, tdnbFirstPressed, tdnbFirstDisabled, tdnbPriorNormal, tdnbPriorHot, tdnbPriorPressed, tdnbPriorDisabled, tdnbNextNormal, tdnbNextHot, tdnbNextPressed, tdnbNextDisabled, tdnbLastNormal, tdnbLastHot, tdnbLastPressed, tdnbLastDisabled, tdnbInsertNormal, tdnbInsertHot, tdnbInsertPressed, tdnbInsertDisabled, tdnbDeleteNormal, tdnbDeleteHot, tdnbDeletePressed, tdnbDeleteDisabled, tdnbEditNormal, tdnbEditHot, tdnbEditPressed, tdnbEditDisabled, tdnbPostNormal, tdnbPostHot, tdnbPostPressed, tdnbPostDisabled, tdnbCancelNormal, tdnbCancelHot, tdnbCancelPressed, tdnbCancelDisabled, tdnbRefreshNormal, tdnbRefreshHot, tdnbRefreshPressed, tdnbRefreshDisabled, tdnbApplyUpdatesNormal, tdnbApplyUpdatesHot, tdnbApplyUpdatesPressed, tdnbApplyUpdatesDisabled, tdnbCancelUpdatesNormal, tdnbCancelUpdatesHot, tdnbCancelUpdatesPressed, tdnbCancelUpdatesDisabled);
  TThemedPage = (tpPageDontCare, tpPageRoot, tpUpNormal, tpUpHot, tpUpPressed, tpUpDisabled, tpDownNormal, tpDownHot, tpDownPressed, tpDownDisabled, tpUpHorzNormal, tpUpHorzHot, tpUpHorzPressed, tpUpHorzDisabled, tpDownHorzNormal, tpDownHorzHot, tpDownHorzPressed, tpDownHorzDisabled);
  TThemedPanel = (tpPanelDontCare, tpPanelRoot, tpPanelBackground, tpPanelBevel, tpDockPanelHorzNormal, tpDockPanelHorzSelected, tpDockPanelVertNormal, tpDockPanelVertSelected, tpDockPanelPinNormal, tpDockPanelCloseNormal);
  TThemedProgress = (tpProgressDontCare, tpProgressRoot, tpBar, tpBarVert, tpChunk, tpChunkVert, tpFill, tpFillVert, tpPulseOverlay, tpMoveOverlay, tpPulseOverlayVert, tpMoveOverlayVert, tpTransparentBarNormal, tpTransparentBarPartial, tpTransparentBarVertNormal, tpTransparentBarVertPartial);
  TThemedRebar = (trRebarDontCare, trRebarRoot, trGripper, trGripperVert, trBand, trChevronNormal, trChevronHot, trChevronPressed, trChevronVertNormal, trChevronVertHot, trChevronVertPressed, trBackground, trSplitterNormal, trSplitterHot, trSplitterPressed, trSlipperVertNormal, trSlipperVertHot, trSlipperVertPressed);
  TThemedScrollBar = (tsScrollBarDontCare, tsScrollBarRoot, tsArrowBtnUpNormal, tsArrowBtnUpHot, tsArrowBtnUpPressed, tsArrowBtnUpDisabled, tsArrowBtnDownNormal, tsArrowBtnDownHot, tsArrowBtnDownPressed, tsArrowBtnDownDisabled, tsArrowBtnLeftNormal, tsArrowBtnLeftHot, tsArrowBtnLeftPressed, tsArrowBtnLeftDisabled, tsArrowBtnRightNormal, tsArrowBtnRightHot, tsArrowBtnRightPressed, tsArrowBtnRightDisabled, tsArrowBtnUpHover, tsArrowBtnDownHover, tsArrowBtnLeftHover, tsArrowBtnRightHover, tsThumbBtnHorzNormal, tsThumbBtnHorzHot, tsThumbBtnHorzPressed, tsThumbBtnHorzDisabled, tsThumbBtnVertNormal, tsThumbBtnVertHot, tsThumbBtnVertPressed, tsThumbBtnVertDisabled, tsLowerTrackHorzNormal, tsLowerTrackHorzHot, tsLowerTrackHorzPressed, tsLowerTrackHorzDisabled, tsLowerTrackHorzHover, tsUpperTrackHorzNormal, tsUpperTrackHorzHot, tsUpperTrackHorzPressed, tsUpperTrackHorzDisabled, tsUpperTrackHorzHover, tsLowerTrackVertNormal, tsLowerTrackVertHot, tsLowerTrackVertPressed, tsLowerTrackVertDisabled, tsLowerTrackVertHover, tsUpperTrackVertNormal, tsUpperTrackVertHot, tsUpperTrackVertPressed, tsUpperTrackVertDisabled, tsUpperTrackVertHover, tsGripperHorzNormal, tsGripperHorzHot, tsGripperHorzPressed, tsGripperHorzDisabled, tsGripperHorzHover, tsGripperVertNormal, tsGripperVertHot, tsGripperVertPressed, tsGripperVertDisabled, tsGripperVertHover, tsSizeBoxRightAlign, tsSizeBoxLeftAlign, tsSizeBoxTopRightAlign, tsSizeBoxTopLeftAlign, tsSizeBoxHalfBottomRightAlign, tsSizeBoxHalfBottomLeftAlign, tsSizeBoxHalfTopRightAlign, tsSizeBoxHalfTopLeftAlign);
  TThemedSpin = (tsSpinDontCare, tsSpinRoot, tsUpNormal, tsUpHot, tsUpPressed, tsUpDisabled, tsDownNormal, tsDownHot, tsDownPressed, tsDownDisabled, tsUpHorzNormal, tsUpHorzHot, tsUpHorzPressed, tsUpHorzDisabled, tsDownHorzNormal, tsDownHorzHot, tsDownHorzPressed, tsDownHorzDisabled);
  TThemedStartPanel = (tspStartPanelDontCare, tspStartPanelRoot, tspUserPane, tspMorePrograms, tspMoreProgramsArrowNormal, tspMoreProgramsArrowHot, tspMoreProgramsArrowPressed, tspProgList, tspProgListSeparator, tspPlacesList, tspPlacesListSeparator, tspLogOff, tspLogOffButtonsNormal, tspLogOffButtonsHot, tspLogOffButtonsPressed, tspUserPicture, tspPreview, tspMoreProgramsTabNormal, tspMoreProgramsTabHot, tspMoreProgramsTabSelected, tspMoreProgramsTabDisabled, tspMoreProgramsTabFocused, tspNSCHost, tspSoftwareExplorerNormal, tspSoftwareExplorerHot, tspSoftwareExplorerSelected, tspSoftwareExplorerDisabled, tspSoftwareExplorerFocused, tspOpenBoxNormal, tspOpenBoxHot, tspOpenBoxSelected, tspOpenBoxDisabled, tspOpenBoxFocused, tspSearchView, tspMoreProgramsArrowBackNormal, tspMoreProgramsArrowBackHot, tspMoreProgramsArrowBackPressed, tspTopMatch, tspLogOffSplitButtonDropDown);
  TThemedStatus = (tsStatusDontCare, tsStatusRoot, tsPane, tsGripperPane, tsGripper);
  TThemedTab = (ttTabDontCare, ttTabRoot, ttTabItemNormal, ttTabItemHot, ttTabItemSelected, ttTabItemDisabled, ttTabItemFocused, ttTabItemLeftEdgeNormal, ttTabItemLeftEdgeHot, ttTabItemLeftEdgeSelected, ttTabItemLeftEdgeDisabled, ttTabItemLeftEdgeFocused, ttTabItemRightEdgeNormal, ttTabItemRightEdgeHot, ttTabItemRightEdgeSelected, ttTabItemRightEdgeDisabled, ttTabItemRightEdgeFocused, ttTabItemBothEdgeNormal, ttTabItemBothEdgeHot, ttTabItemBothEdgeSelected, ttTabItemBothEdgeDisabled, ttTabItemBothEdgeFocused, ttTopTabItemNormal, ttTopTabItemHot, ttTopTabItemSelected, ttTopTabItemDisabled, ttTopTabItemFocused, ttTopTabItemLeftEdgeNormal, ttTopTabItemLeftEdgeHot, ttTopTabItemLeftEdgeSelected, ttTopTabItemLeftEdgeDisabled, ttTopTabItemLeftEdgeFocused, ttTopTabItemRightEdgeNormal, ttTopTabItemRightEdgeHot, ttTopTabItemRightEdgeSelected, ttTopTabItemRightEdgeDisabled, ttTopTabItemRightEdgeFocused, ttTopTabItemBothEdgeNormal, ttTopTabItemBothEdgeHot, ttTopTabItemBothEdgeSelected, ttTopTabItemBothEdgeDisabled, ttTopTabItemBothEdgeFocused, ttPane, ttBody, ttAeroWizardBody);
  TThemedTabSet = (tbsDontCare, tbsRoot, tbsBackground, tbsTabNormal, tbsTabSelected);
  TThemedTaskBand = (ttbTaskBandDontCare, ttbTaskBandRoot, ttbGroupCount, ttbFlashButton, ttpFlashButtonGroupMenu);
  TThemedTaskBar = (ttbTaskBarDontCare, ttbTaskBarRoot, ttbBackgroundBottom, ttbBackgroundRight, ttbBackgroundTop, ttbBackgroundLeft, ttbSizingBarBottom, ttbSizingBarRight, ttbSizingBarTop, ttbSizingBarLeft);
  TThemedTaskDialog = (ttdTaskDialogDontCare, ttdTaskDialogRoot, ttdPrimaryPanel, ttdMainInstructionPane, ttdMainIcon, ttdContentPane, ttdContentIcon, ttdExpandedContent, ttdCommandLinkPane, ttdSecondaryPanel, ttdControlPane, ttdButtonSection, ttdButtonWrapper, ttdExpandoText, ttdExpandoButtonNormal, ttdExpandoButtonHover, ttdExpandoButtonPressed, ttdExpandoButtonExpandedNormal, ttdExpandoButtonExpandedHover, ttdExpandoButtonExpandedPressed, ttdVerificationText, ttdFootnotePane, ttdFootnoteArea, ttdFootnoteSeparator, ttdExpandedFooterArea, ttdProgressBar, ttdImageAlignment, ttdRadioButtonPane);
  TThemedTextLabel = (ttlTextLabelDontCare, ttlTextLabelRoot, ttlTextLabelNormal, ttlTextLabelDisabled);
  TThemedTextStyle = (ttsTextStyleDontCare, ttsTextStyleRoot, ttsMainInstruction, ttsInstruction, ttsBodyTitle, ttsBodyText, ttsSecondaryText, ttsHyperLinkTextNormal, ttsHyperLinkTextHot, ttsHyperLinkTextPressed, ttsHyperLinkTextDisabled, ttsExpanded, ttsLabel, ttsControlLabelNormal, ttsControlLabelDisabled);
  TThemedToggleSwitch = (ttsToggleSwitchDontCare, ttsToggleSwitchRoot, ttsTrackOffNormal, ttsTrackOffHot, ttsTrackOffDisabled, ttsTrackOnNormal, ttsTrackOnHot, ttsTrackOnDisabled, ttsThumbNormal, ttsThumbHot, ttsThumbDisabled);
  TThemedSearchIndicators = (tsiTextNormal, tsiTextHot, tsiTextPressed, tsiTextDisabled, tsiAudioNormal, tsiAudioHot, tsiAudioPressed, tsiAudioDisabled);
  TThemedToolBar = (ttbToolBarDontCare, ttbToolBarRoot, ttbButtonNormal, ttbButtonHot, ttbButtonPressed, ttbButtonDisabled, ttbButtonChecked, ttbButtonCheckedHot, ttbButtonNearHot, ttbButtonOtherSideHot, ttbDropDownButtonNormal, ttbDropDownButtonHot, ttbDropDownButtonPressed, ttbDropDownButtonDisabled, ttbDropDownButtonChecked, ttbDropDownButtonCheckedHot, ttbDropDownButtonNearHot, ttbDropDownButtonOtherSideHot, ttbSplitButtonNormal, ttbSplitButtonHot, ttbSplitButtonPressed, ttbSplitButtonDisabled, ttbSplitButtonChecked, ttbSplitButtonCheckedHot, ttbSplitButtonNearHot, ttbSplitButtonOtherSideHot, ttbSplitButtonDropDownNormal, ttbSplitButtonDropDownHot, ttbSplitButtonDropDownPressed, ttbSplitButtonDropDownDisabled, ttbSplitButtonDropDownChecked, ttbSplitButtonDropDownCheckedHot, ttbSplitButtonDropDownNearHot, ttbSplitButtonDropDownOtherSideHot, ttbSeparatorNormal, ttbSeparatorHot, ttbSeparatorPressed, ttbSeparatorDisabled, ttbSeparatorChecked, ttbSeparatorCheckedHot, ttbSeparatorNearHot, ttbSeparatorOtherSideHot, ttbSeparatorVertNormal, ttbSeparatorVertHot, ttbSeparatorVertPressed, ttbSeparatorVertDisabled, ttbSeparatorVertChecked, ttbSeparatorVertCheckedHot, ttbSeparatorVertNearHot, ttbSeparatorVertOtherSideHot, ttbDropDownButtonGlyphNormal, ttbDropDownButtonGlyphHot, ttbDropDownButtonGlyphPressed, ttbDropDownButtonGlyphDisabled, ttbDropDownButtonGlyphChecked, ttbDropDownButtonGlyphCheckedHot, ttbDropDownButtonGlyphNearHot, ttbDropDownButtonGlyphOtherSideHot);
  TThemedToolTip = (tttToolTipDontCare, tttToolTipRoot, tttStandardNormal, tttStandardLink, tttStandardTitleNormal, tttStandardTitleLink, tttBaloonNormal, tttBaloonLink, tttBaloonTitleNormal, tttBaloonTitleLink, tttBaloonStemUpLeft, tttBaloonStemDownLeft, tttCloseNormal, tttCloseHot, tttClosePressed, tttBalloonStemUpLeftWall, tttBalloonStemUpCentered, tttBalloonStemUpRightWall, tttBalloonStemDownRightWall, tttBalloonStemDownCentered, tttBalloonStemLeftWall, tttWrenchNormal, tttWrenchHot, tttWrenchPressed);
  TThemedTrackBar = (ttbTrackBarDontCare, ttbTrackBarRoot, ttbTrack, ttbTrackVert, ttbThumbNormal, ttbThumbHot, ttbThumbPressed, ttbThumbFocused, ttbThumbDisabled, ttbThumbBottomNormal, ttbThumbBottomHot, ttbThumbBottomPressed, ttbThumbBottomFocused, ttbThumbBottomDisabled, ttbThumbTopNormal, ttbThumbTopHot, ttbThumbTopPressed, ttbThumbTopFocused, ttbThumbTopDisabled, ttbThumbVertNormal, ttbThumbVertHot, ttbThumbVertPressed, ttbThumbVertFocused, ttbThumbVertDisabled, ttbThumbLeftNormal, ttbThumbLeftHot, ttbThumbLeftPressed, ttbThumbLeftFocused, ttbThumbLeftDisabled, ttbThumbRightNormal, ttbThumbRightHot, ttbThumbRightPressed, ttbThumbRightFocused, ttbThumbRightDisabled, ttbThumbTics, ttbThumbTicsVert);
  TThemedTrayNotify = (ttnTrayNotifyDontCare, ttnTrayNotifyRoot, ttnBackground, ttnAnimBackground);
  TThemedTreeview = (ttTreeviewDontCare, ttTreeviewRoot, ttItemNormal, ttItemHot, ttItemSelected, ttItemDisabled, ttItemSelectedNotFocus, ttItemHotSelected, ttGlyphClosed, ttGlyphOpened, ttBranch, ttHotGlyphClosed, ttHotGlyphOpen);
  TThemedWindow = (twWindowDontCare, twWindowRoot, twCaptionActive, twCaptionInactive, twCaptionDisabled, twSmallCaptionActive, twSmallCaptionInactive, twSmallCaptionDisabled, twMinCaptionActive, twMinCaptionInactive, twMinCaptionDisabled, twSmallMinCaptionActive, twSmallMinCaptionInactive, twSmallMinCaptionDisabled, twMaxCaptionActive, twMaxCaptionInactive, twMaxCaptionDisabled, twSmallMaxCaptionActive, twSmallMaxCaptionInactive, twSmallMaxCaptionDisabled, twFrameLeftActive, twFrameLeftInactive, twFrameRightActive, twFrameRightInactive, twFrameBottomActive, twFrameBottomInactive, twSmallFrameLeftActive, twSmallFrameLeftInactive, twSmallFrameRightActive, twSmallFrameRightInactive, twSmallFrameBottomActive, twSmallFrameBottomInactive, twSysButtonNormal, twSysButtonHot, twSysButtonPushed, twSysButtonDisabled, twMDISysButtonNormal, twMDISysButtonHot, twMDISysButtonPushed, twMDISysButtonDisabled, twMinButtonNormal, twMinButtonHot, twMinButtonPushed, twMinButtonDisabled, twMDIMinButtonNormal, twMDIMinButtonHot, twMDIMinButtonPushed, twMDIMinButtonDisabled, twMaxButtonNormal, twMaxButtonHot, twMaxButtonPushed, twMaxButtonDisabled, twCloseButtonNormal, twCloseButtonHot, twCloseButtonPushed, twCloseButtonDisabled, twSmallCloseButtonNormal, twSmallCloseButtonHot, twSmallCloseButtonPushed, twSmallCloseButtonDisabled, twMDICloseButtonNormal, twMDICloseButtonHot, twMDICloseButtonPushed, twMDICloseButtonDisabled, twRestoreButtonNormal, twRestoreButtonHot, twRestoreButtonPushed, twRestoreButtonDisabled, twMDIRestoreButtonNormal, twMDIRestoreButtonHot, twMDIRestoreButtonPushed, twMDIRestoreButtonDisabled, twHelpButtonNormal, twHelpButtonHot, twHelpButtonPushed, twHelpButtonDisabled, twMDIHelpButtonNormal, twMDIHelpButtonHot, twMDIHelpButtonPushed, twMDIHelpButtonDisabled, twHorzScrollNormal, twHorzScrollHot, twHorzScrollPushed, twHorzScrollDisabled, twHorzThumbNormal, twHorzThumbHot, twHorzThumbPushed, twHorzThumbDisabled, twVertScrollNormal, twVertScrollHot, twVertScrollPushed, twVertScrollDisabled, twVertThumbNormal, twVertThumbHot, twVertThumbPushed, twVertThumbDisabled, twDialog, twCaptionSizingTemplate, twSmallCaptionSizingTemplate, twFrameLeftSizingTemplate, twSmallFrameLeftSizingTemplate, twFrameRightSizingTemplate, twSmallFrameRightSizingTemplate, twFrameBottomSizingTemplate, twSmallFrameBottomSizingTemplate, twFrame);
  TThemeData = array [TThemedElement] of NativeUInt;
  TElementColor = (ecBorderColor, ecFillColor, ecTextColor, ecEdgeLightColor, ecEdgeHighLightColor, ecEdgeShadowColor, ecEdgeDkShadowColor, ecEdgeFillColor, ecTransparentColor, ecGradientColor1, ecGradientColor2, ecGradientColor3, ecGradientColor4, ecGradientColor5, ecShadowColor, ecGlowColor, ecTextBorderColor, ecTextShadowColor, ecGlyphTextColor, ecGlyphTransparentColor, ecFillColorHint, ecBorderColorHint, ecAccentColorHint, ecTextColorHint, ecHeading1TextColor, ecHeading2TextColor, ecBodyTextColor);
  TElementEdge = (eeRaisedInner, eeSunkenInner, eeRaisedOuter, eeSunkenOuter, eeBump, eeEtched, eeRaised, eeSunken);
  TElementEdges = set of TElementEdge;
  TElementEdgeFlag = (efLeft, efTop, efRight, efBottom, efTopLeft, efTopRight, efBottomLeft, efBottomRight, efRect, efDiagonal, efDiagonalEndTopLeft, efDiagonalEndTopRight, efDiagonalEndBottomLeft, efDiagonalEndBottomRight, efMiddle, efSoft, efAdjust, efFlat, efMono);
  TElementEdgeFlags = set of TElementEdgeFlag;
  TElementMargin = (emSizing, emContent, emCaption);
  TElementSize = (esMinimum, esActual, esStretch);
  TStyleTextFlag = (stfTextColor, stfBorderColor, stfBorderSize, stfShadowColor, stfShadowOffset, stfGlowSize);
  TStyleTextFlags = set of TStyleTextFlag;
  TStyleTextOptions = TStyleTextOptions = record//size=20
Flags:TStyleTextFlags;//f0
TextColor:TColor;//f4
BorderColor:TColor;//f8
BorderSize:Integer;//fC
ShadowColor:TColor;//f10
ShadowOffset:TPoint;//f14
GlowSize:Integer;//f1C
end;;
  TThemedElementDetails = TThemedElementDetails = record//size=C
Element:TThemedElement;//f0
Part:Integer;//f4
State:Integer;//f8
end;
//Methods:
Create(Element:TThemedElement;Part:Integer;State:Integer):TThemedElementDetails;//0079EC18;
  TStyleColor = (scBorder, scButtonDisabled, scButtonFocused, scButtonHot, scButtonNormal, scButtonPressed, scCategoryButtons, scCategoryButtonsGradientBase, scCategoryButtonsGradientEnd, scCategoryPanelGroup, scComboBox, scComboBoxDisabled, scEdit, scEditDisabled, scGrid, scGenericBackground, scGenericGradientBase, scGenericGradientEnd, scHintGradientBase, scHintGradientEnd, scListBox, scListBoxDisabled, scListView, scPanel, scPanelDisabled, scSplitter, scToolBarGradientBase, scToolBarGradientEnd, scTreeView, scWindow);
  TStyleFont = (sfButtonTextDisabled, sfButtonTextFocused, sfButtonTextHot, sfButtonTextNormal, sfButtonTextPressed, sfCaptionTextInactive, sfCaptionTextNormal, sfCategoryPanelGroupHeaderHot, sfCategoryPanelGroupHeaderNormal, sfCatgeoryButtonsCategoryNormal, sfCatgeoryButtonsCategorySelected, sfCatgeoryButtonsHot, sfCatgeoryButtonsNormal, sfCatgeoryButtonsSelected, sfCheckBoxTextDisabled, sfCheckBoxTextFocused, sfCheckBoxTextHot, sfCheckBoxTextNormal, sfCheckBoxTextPressed, sfComboBoxItemDisabled, sfComboBoxItemFocused, sfComboBoxItemHot, sfComboBoxItemNormal, sfComboBoxItemSelected, sfEditBoxTextDisabled, sfEditBoxTextFocused, sfEditBoxTextHot, sfEditBoxTextNormal, sfEditBoxTextSelected, sfGridItemFixedHot, sfGridItemFixedNormal, sfGridItemFixedPressed, sfGridItemNormal, sfGridItemSelected, sfGroupBoxTextDisabled, sfGroupBoxTextNormal, sfHeaderSectionTextDisabled, sfHeaderSectionTextHot, sfHeaderSectionTextNormal, sfHeaderSectionTextPressed, sfListItemTextDisabled, sfListItemTextFocused, sfListItemTextHot, sfListItemTextNormal, sfListItemTextSelected, sfMenuItemTextDisabled, sfMenuItemTextHot, sfMenuItemTextNormal, sfMenuItemTextSelected, sfPanelTextDisabled, sfPanelTextNormal, sfPopupMenuItemTextDisabled, sfPopupMenuItemTextHot, sfPopupMenuItemTextNormal, sfPopupMenuItemTextSelected, sfRadioButtonTextDisabled, sfRadioButtonTextFocused, sfRadioButtonTextHot, sfRadioButtonTextNormal, sfRadioButtonTextPressed, sfSmCaptionTextInactive, sfSmCaptionTextNormal, sfStatusPanelTextDisabled, sfStatusPanelTextNormal, sfTabTextActiveDisabled, sfTabTextActiveHot, sfTabTextActiveNormal, sfTabTextInactiveDisabled, sfTabTextInactiveHot, sfTabTextInactiveNormal, sfTextLabelDisabled, sfTextLabelFocused, sfTextLabelHot, sfTextLabelNormal, sfToolItemTextDisabled, sfToolItemTextHot, sfToolItemTextNormal, sfToolItemTextSelected, sfTreeItemTextDisabled, sfTreeItemTextFocused, sfTreeItemTextHot, sfTreeItemTextNormal, sfTreeItemTextSelected, sfWindowTextDisabled, sfWindowTextNormal);
  TStyleInfo = TStyleInfo = record//size=14
f0:string;//f0
f4:string;//f4
f8:string;//f8
fC:string;//fC
f10:string;//f10
end;
Name:string;//f0
Author:string;//f4
AuthorEMail:string;//f8
AuthorURL:string;//fC
Version:string;//f10
end;;
  TAbstractStyleServices = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    procedure DoColorToRGB; virtual; abstract;//v0//00405554
    procedure DoDrawEdge; virtual; abstract;//v4//00405554
    procedure DoDrawElement; virtual; abstract;//v8//00405554
    procedure DoDrawIcon; virtual; abstract;//vC//00405554
    procedure v10; virtual; abstract;//v10//00405554
    procedure v14; virtual; abstract;//v14//00405554
    procedure DoGetElementContentRect; virtual; abstract;//v18//00405554
    procedure DoGetElementColor; virtual; abstract;//v1C//00405554
    procedure DoGetElementMargins; virtual; abstract;//v20//00405554
    procedure DoGetElementRegion; virtual; abstract;//v24//00405554
    procedure DoGetElementSize; virtual; abstract;//v28//00405554
    procedure DoGetStyleColor; virtual; abstract;//v2C//00405554
    procedure v30; virtual; abstract;//v30//00405554
    procedure v34; virtual; abstract;//v34//00405554
    procedure v38; virtual; abstract;//v38//00405554
    procedure DoHasTransparentParts; virtual; abstract;//v3C//00405554
    procedure v40; virtual; abstract;//v40//00405554
    procedure DoIsValidStyle; virtual; abstract;//v44//00405554
    procedure v48; virtual; abstract;//v48//00405554
    procedure GetEnabled; virtual; abstract;//v4C//00405554
    procedure GetName; virtual; abstract;//v50//00405554
    procedure GetTheme; virtual; abstract;//v54//00405554
    procedure v58; virtual; abstract;//v58//00405554
    procedure GetElementDetails; virtual; abstract;//v5C//00405554
    procedure GetElementDetails; virtual; abstract;//v60//00405554
    procedure GetElementDetails; virtual; abstract;//v64//00405554
    procedure GetElementDetails; virtual; abstract;//v68//00405554
    procedure GetElementDetails; virtual; abstract;//v6C//00405554
    procedure GetElementDetails; virtual; abstract;//v70//00405554
    procedure GetElementDetails; virtual; abstract;//v74//00405554
    procedure GetElementDetails; virtual; abstract;//v78//00405554
    procedure GetElementDetails; virtual; abstract;//v7C//00405554
    procedure GetElementDetails; virtual; abstract;//v80//00405554
    procedure GetElementDetails; virtual; abstract;//v84//00405554
    procedure GetElementDetails; virtual; abstract;//v88//00405554
    procedure GetElementDetails; virtual; abstract;//v8C//00405554
    procedure GetElementDetails; virtual; abstract;//v90//00405554
    procedure GetElementDetails; virtual; abstract;//v94//00405554
    procedure GetElementDetails; virtual; abstract;//v98//00405554
    procedure GetElementDetails; virtual; abstract;//v9C//00405554
    procedure GetElementDetails; virtual; abstract;//vA0//00405554
    procedure GetElementDetails; virtual; abstract;//vA4//00405554
    procedure GetElementDetails; virtual; abstract;//vA8//00405554
    procedure GetElementDetails; virtual; abstract;//vAC//00405554
    procedure GetElementDetails; virtual; abstract;//vB0//00405554
    procedure GetElementDetails; virtual; abstract;//vB4//00405554
    procedure GetElementDetails; virtual; abstract;//vB8//00405554
    procedure GetElementDetails; virtual; abstract;//vBC//00405554
    procedure GetElementDetails; virtual; abstract;//vC0//00405554
    procedure GetElementDetails; virtual; abstract;//vC4//00405554
    procedure GetElementDetails; virtual; abstract;//vC8//00405554
    procedure GetElementDetails; virtual; abstract;//vCC//00405554
    procedure GetElementDetails; virtual; abstract;//vD0//00405554
    procedure GetElementDetails; virtual; abstract;//vD4//00405554
    procedure GetElementDetails; virtual; abstract;//vD8//00405554
    procedure GetElementDetails; virtual; abstract;//vDC//00405554
    procedure GetElementDetails; virtual; abstract;//vE0//00405554
    procedure GetElementDetails; virtual; abstract;//vE4//00405554
    procedure GetElementDetails; virtual; abstract;//vE8//00405554
    procedure GetElementDetails; virtual; abstract;//vEC//00405554
    procedure GetElementDetails; virtual; abstract;//vF0//00405554
    procedure GetElementDetails; virtual; abstract;//vF4//00405554
    procedure GetElementDetails; virtual; abstract;//vF8//00405554
    procedure GetElementDetails; virtual; abstract;//vFC//00405554
    procedure GetElementDetails; virtual; abstract;//v100//00405554
    procedure GetElementDetails; virtual; abstract;//v104//00405554
    procedure GetElementDetails; virtual; abstract;//v108//00405554
    procedure GetElementDetails; virtual; abstract;//v10C//00405554
    procedure LoadFromStream; virtual; abstract;//v110//00405554
    procedure PaintBorder; virtual; abstract;//v114//00405554
    procedure SaveToStream; virtual; abstract;//v118//00405554
    procedure UpdateThemes; virtual; abstract;//v11C//00405554
  end;
  TCustomStyleServices.TStyleFlag = (sfHandleMessages);
  TCustomStyleServices.TStyleFlags = set of TCustomStyleServices.TStyleFlag;
  TCustomStyleServices = class(TAbstractStyleServices)
  published
    function GetElementSize(DC:HDC; Details:TThemedElementDetails; Size:TSize; ElementSize:TElementSize):Boolean;//00586920
    function GetElementSize(DC:HDC; Details:TThemedElementDetails; Size:TSize; ElementSize:TElementSize; Rect:TRect):Boolean;//00586950
    function GetStyleColor(Color:TStyleColor):TColor;//00586990
    function GetElementMargins(DC:HDC; Details:TThemedElementDetails; Margins:_MARGINS; ElementMargin:TElementMargin):Boolean;//0058689C
    function GetElementRegion(Details:TThemedElementDetails; Rect:TRect; Region:HRGN):Boolean;//005868CC
    function GetElementRegion(DC:HDC; Details:TThemedElementDetails; Region:HRGN; Rect:TRect):Boolean;//005868F4
    function GetStyleFontColor(Font:TStyleFont):TColor;//00586998
    function LoadFromFile(FileName:string):TCustomStyleServices;//005869EC
    procedure PaintBorder(Control:TWinControl; EraseLRCorner:Boolean);//00586A4C
    procedure SaveToFile(FileName:string);//00586BFC
    function GetSystemColor(Color:TColor):TColor;//005869A0
    function HasElementFixedPosition(Details:TThemedElementDetails):Boolean;//005869D0
    function HasTransparentParts(Details:TThemedElementDetails):Boolean;//005869B4
    function GetElementColor(Details:TThemedElementDetails; ElementColor:TElementColor; Color:TColor):Boolean;//00586848
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function DrawEdge(DC:HDC; Details:TThemedElementDetails; ContentRect:PRect; Flags:TElementEdgeFlags; Edges:TElementEdges; R:TRect):Boolean;//00586664
    function DrawElement(DC:HDC; Details:TThemedElementDetails; ClipRect:PRect; R:TRect):Boolean;//00586698
    constructor Create();//005865F4
    procedure ApplyThemeChange;//0058662C
    function ColorToRGB(Color:TColor; Details:PThemedElementDetails):Cardinal;//00586648
    function DrawIcon(DC:HDC; Details:TThemedElementDetails; Index:Integer; Images:NativeUInt; R:TRect):Boolean;//005866C4
    function DrawText(DC:HDC; Details:TThemedElementDetails; Color:TColor; Flags:TTextFormat; var R:TRect; S:string):Boolean;//0058677C
    function DrawText(DC:HDC; Details:TThemedElementDetails; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string):Boolean;//00586804
    function GetElementContentRect(DC:HDC; Details:TThemedElementDetails; ContentRect:TRect; BoundingRect:TRect):Boolean;//00586870
    function DrawParentBackground(Window:HWND; Target:HDC; Bounds:PRect; OnlyIfTransparent:Boolean; Details:TThemedElementDetails):Boolean;//00586710
    function DrawParentBackground(Window:HWND; Target:HDC; Bounds:PRect; OnlyIfTransparent:Boolean; Details:PThemedElementDetails):Boolean;//005866F4
    function DrawText(DC:HDC; Details:TThemedElementDetails; Flags2:Cardinal; Flags:Cardinal; R:TRect; S:string):Boolean;//0058672C
  public
    FOnThemeChange:TNotifyEvent;//f8
    procedure PaintBorder(Control:TWinControl; EraseLRCorner:Boolean); virtual;//v114//00586A4C
    procedure DoOnThemeChange; virtual;//v120//00586650
    function GetFlags:TStyleFlags; virtual;//v124//005869A8
    constructor Create(); virtual;//v128//005865F4
    function LoadFromFile(FileName:string):TCustomStyleServices; virtual;//v12C//005869EC
    procedure SaveToFile(FileName:string); virtual;//v130//00586BFC
  end;
  TUxThemeStyle = class(TCustomStyleServices)
  published
    function GetElementDetails(Detail:TThemedTab):TThemedElementDetails;//00589C34
    function GetElementDetails(Detail:TThemedStatus):TThemedElementDetails;//00589E54
    function GetElementDetails(Detail:TThemedStartPanel):TThemedElementDetails;//005896A0
    function GetElementDetails(Detail:TThemedTaskBar):TThemedElementDetails;//005895E0
    function GetElementDetails(Detail:TThemedTaskBand):TThemedElementDetails;//00589A00
    function GetElementDetails(Detail:TThemedTabSet):TThemedElementDetails;//005894B0
    function GetElementDetails(Detail:TThemedRebar):TThemedElementDetails;//00588D48
    function GetElementDetails(Detail:TThemedProgress):TThemedElementDetails;//00588698
    function GetElementDetails(Detail:TThemedPanel):TThemedElementDetails;//005894C0
    function GetElementDetails(Detail:TThemedSpin):TThemedElementDetails;//0058988C
    //procedure GetElementDetails(Detail:TThemedSearchIndicators; ?:?);//00588E28
    function GetElementDetails(Detail:TThemedScrollBar):TThemedElementDetails;//005898F0
    function GetElementDetails(Detail:TThemedTaskDialog):TThemedElementDetails;//00589A50
    function GetElementDetails(Detail:TThemedWindow):TThemedElementDetails;//005890F0
    function GetElementDetails(Detail:TThemedTreeview):TThemedElementDetails;//00589540
    function GetElementDetails(Detail:TThemedTrayNotify):TThemedElementDetails;//005895A4
    procedure UpdateThemes;//00589FE4
    procedure SaveToStream(Stream:TStream);//00589F60
    function LoadFromStream(Stream:TStream):TCustomStyleServices;//00589F08
    //procedure GetElementDetails(Detail:TThemedToggleSwitch; ?:?);//00588E38
    function GetElementDetails(Detail:TThemedTextStyle):TThemedElementDetails;//00589D60
    function GetElementDetails(Detail:TThemedTextLabel):TThemedElementDetails;//00589E44
    function GetElementDetails(Detail:TThemedTrackBar):TThemedElementDetails;//00588E48
    function GetElementDetails(Detail:TThemedToolTip):TThemedElementDetails;//00588F58
    function GetElementDetails(Detail:TThemedToolBar):TThemedElementDetails;//00589044
    function GetElementDetails(Detail:TThemedControlBar):TThemedElementDetails;//005894A0
    function GetElementDetails(Detail:TThemedComboBox):TThemedElementDetails;//005888EC
    function GetElementDetails(Detail:TThemedClock):TThemedElementDetails;//00588814
    function GetElementDetails(Detail:TThemedDatePicker):TThemedElementDetails;//005889F0
    //procedure GetElementDetails(Detail:TThemedMPlayerButtons; ?:?);//005889E0
    function GetElementDetails(Detail:TThemedDataNavButtons):TThemedElementDetails;//005889D0
    function GetElementDetails(Detail:TThemedButton):TThemedElementDetails;//00588840
    destructor Destroy();//00586D30
    constructor Create();//00586C54
    function GetElementDetails(Detail:TThemedCheckListBox):TThemedElementDetails;//005894F0
    function GetElementDetails(Detail:TThemedCategoryPanelGroup):TThemedElementDetails;//005894E0
    function GetElementDetails(Detail:TThemedCategoryButtons):TThemedElementDetails;//005894D0
    function GetElementDetails(Detail:TThemedEdit):TThemedElementDetails;//00588B74
    function GetElementDetails(Detail:TThemedMenuBand):TThemedElementDetails;//005884E8
    function GetElementDetails(Detail:TThemedMenu):TThemedElementDetails;//005882DC
    function GetElementDetails(Detail:TThemedListview):TThemedElementDetails;//005880CC
    function GetElementDetails(Detail:TThemedPage):TThemedElementDetails;//005887B0
    function GetElementDetails(Detail:TThemedNavigation):TThemedElementDetails;//00588648
    function GetElementDetails(Detail:TThemedMonthCal):TThemedElementDetails;//00588528
    function GetElementDetails(Detail:TThemedHeader):TThemedElementDetails;//00588214
    function GetElementDetails(Detail:TThemedExplorerBar):TThemedElementDetails;//00588A40
    function GetElementDetails(Detail:TThemedFlyOut):TThemedElementDetails;//00588C70
    function GetElementDetails(Detail:TThemedLink):TThemedElementDetails;//005881E8
    function GetElementDetails(Detail:TThemedGrid):TThemedElementDetails;//00589500
    function GetElementDetails(Detail:TThemedHint):TThemedElementDetails;//00589490
  public
    FCustomElements:?;//f10
    FAvailable:Boolean;//f38
    FNewComCtrls:Boolean;//f39
    FUseThemes:Boolean;//f3A
    FThemeData:TThemeData;//f3C
    destructor Destroy(); virtual;//00586D30
    function DoColorToRGB(Color:Graphics.TColor; Details:PThemedElementDetails):TColorRef; virtual;//v0//00586D60
    function DoDrawEdge(DC:Windows.HDC; Details:TThemedElementDetails; const R:Windows.TRect; Edges:TElementEdges; Flags:TElementEdgeFlags; ContentRect:Windows.PRect):Boolean; virtual;//v4//00586D98
    function DoDrawElement(DC:Windows.HDC; Details:TThemedElementDetails; const R:Windows.TRect; ClipRect:Windows.PRect):Boolean; virtual;//v8//00586E38
    function DoDrawIcon(DC:Windows.HDC; Details:TThemedElementDetails; const R:Windows.TRect; himl:CommCtrl.HIMAGELIST; Index:Integer):Boolean; virtual;//vC//00586EB0
    //function v10(?:?; ?:?; ?:?; ?:?; ?:?):Boolean; virtual;//v10//00586F30
    //function v14(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):Boolean; virtual;//v14//00586F74
    function DoGetElementContentRect(DC:Windows.HDC; Details:TThemedElementDetails; const BoundingRect:Windows.TRect; var ContentRect:Windows.TRect):Boolean; virtual;//v18//00587198
    function DoGetElementColor(Details:TThemedElementDetails; ElementColor:TElementColor; var Color:Graphics.TColor):Boolean; virtual;//v1C//00587210
    function DoGetElementMargins(DC:Windows.HDC; Details:TThemedElementDetails; Rect:Windows.PRect; ElementMargin:TElementMargin; var Margins:UxTheme.TMargins):Boolean; virtual;//v20//00587288
    function DoGetElementRegion(DC:Windows.HDC; Details:TThemedElementDetails; const Rect:Windows.TRect; var Region:Windows.HRGN):Boolean; virtual;//v24//00587314
    function DoGetElementSize(DC:Windows.HDC; Details:TThemedElementDetails; Rect:Windows.PRect; ElementSize:TElementSize; var Size:Windows.TSize):Boolean; virtual;//v28//0058738C
    function DoGetStyleColor(Color:TStyleColor):TColor; virtual;//v2C//00587418
    //function v30(?:?):?; virtual;//v30//00587598
    //function v34(?:?):?; virtual;//v34//00587F68
    //function v38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):Boolean; virtual;//v38//00587F6C
    function DoHasTransparentParts(Details:TThemedElementDetails):Boolean; virtual;//v3C//00588010
    //function v40:?; virtual;//v40//00588070
    function DoIsValidStyle(Stream:Classes.TStream; StyleInfo:PStyleInfo):Boolean; virtual;//v44//00588074
    //function v48:?; virtual;//v48//00589EE8
    function GetEnabled:Boolean; virtual;//v4C//00589EF0
    function GetName:UnicodeString; virtual;//v50//00589510
    function GetTheme(Element:TThemedElement):THandle; virtual;//v54//00589EA4
    procedure v58; virtual;//v58//00589FB4
    function GetElementDetails(Detail:TThemedButton):TThemedElementDetails; virtual;//v5C//00588840
    function GetElementDetails(Detail:TThemedCategoryButtons):TThemedElementDetails; virtual;//v60//005894D0
    function GetElementDetails(Detail:TThemedCategoryPanelGroup):TThemedElementDetails; virtual;//v64//005894E0
    function GetElementDetails(Detail:TThemedCheckListBox):TThemedElementDetails; virtual;//v68//005894F0
    function GetElementDetails(Detail:TThemedClock):TThemedElementDetails; virtual;//v6C//00588814
    function GetElementDetails(Detail:TThemedComboBox):TThemedElementDetails; virtual;//v70//005888EC
    function GetElementDetails(Detail:TThemedControlBar):TThemedElementDetails; virtual;//v74//005894A0
    function GetElementDetails(Detail:TThemedDataNavButtons):TThemedElementDetails; virtual;//v78//005889D0
    //procedure GetElementDetails(Detail:TThemedMPlayerButtons; ?:?); virtual;//v7C//005889E0
    function GetElementDetails(Detail:TThemedDatePicker):TThemedElementDetails; virtual;//v80//005889F0
    function GetElementDetails(Detail:TThemedEdit):TThemedElementDetails; virtual;//v84//00588B74
    function GetElementDetails(Detail:TThemedExplorerBar):TThemedElementDetails; virtual;//v88//00588A40
    function GetElementDetails(Detail:TThemedFlyOut):TThemedElementDetails; virtual;//v8C//00588C70
    function GetElementDetails(Detail:TThemedGrid):TThemedElementDetails; virtual;//v90//00589500
    function GetElementDetails(Detail:TThemedHeader):TThemedElementDetails; virtual;//v94//00588214
    function GetElementDetails(Detail:TThemedHint):TThemedElementDetails; virtual;//v98//00589490
    function GetElementDetails(Detail:TThemedLink):TThemedElementDetails; virtual;//v9C//005881E8
    function GetElementDetails(Detail:TThemedListview):TThemedElementDetails; virtual;//vA0//005880CC
    function GetElementDetails(Detail:TThemedMenu):TThemedElementDetails; virtual;//vA4//005882DC
    function GetElementDetails(Detail:TThemedMenuBand):TThemedElementDetails; virtual;//vA8//005884E8
    function GetElementDetails(Detail:TThemedMonthCal):TThemedElementDetails; virtual;//vAC//00588528
    function GetElementDetails(Detail:TThemedNavigation):TThemedElementDetails; virtual;//vB0//00588648
    function GetElementDetails(Detail:TThemedPage):TThemedElementDetails; virtual;//vB4//005887B0
    function GetElementDetails(Detail:TThemedPanel):TThemedElementDetails; virtual;//vB8//005894C0
    function GetElementDetails(Detail:TThemedProgress):TThemedElementDetails; virtual;//vBC//00588698
    function GetElementDetails(Detail:TThemedRebar):TThemedElementDetails; virtual;//vC0//00588D48
    function GetElementDetails(Detail:TThemedScrollBar):TThemedElementDetails; virtual;//vC4//005898F0
    //procedure GetElementDetails(Detail:TThemedSearchIndicators; ?:?); virtual;//vC8//00588E28
    function GetElementDetails(Detail:TThemedSpin):TThemedElementDetails; virtual;//vCC//0058988C
    function GetElementDetails(Detail:TThemedStartPanel):TThemedElementDetails; virtual;//vD0//005896A0
    function GetElementDetails(Detail:TThemedStatus):TThemedElementDetails; virtual;//vD4//00589E54
    function GetElementDetails(Detail:TThemedTab):TThemedElementDetails; virtual;//vD8//00589C34
    function GetElementDetails(Detail:TThemedTabSet):TThemedElementDetails; virtual;//vDC//005894B0
    function GetElementDetails(Detail:TThemedTaskBand):TThemedElementDetails; virtual;//vE0//00589A00
    function GetElementDetails(Detail:TThemedTaskBar):TThemedElementDetails; virtual;//vE4//005895E0
    function GetElementDetails(Detail:TThemedTaskDialog):TThemedElementDetails; virtual;//vE8//00589A50
    function GetElementDetails(Detail:TThemedTextLabel):TThemedElementDetails; virtual;//vEC//00589E44
    function GetElementDetails(Detail:TThemedTextStyle):TThemedElementDetails; virtual;//vF0//00589D60
    //procedure GetElementDetails(Detail:TThemedToggleSwitch; ?:?); virtual;//vF4//00588E38
    function GetElementDetails(Detail:TThemedToolBar):TThemedElementDetails; virtual;//vF8//00589044
    function GetElementDetails(Detail:TThemedToolTip):TThemedElementDetails; virtual;//vFC//00588F58
    function GetElementDetails(Detail:TThemedTrackBar):TThemedElementDetails; virtual;//v100//00588E48
    function GetElementDetails(Detail:TThemedTrayNotify):TThemedElementDetails; virtual;//v104//005895A4
    function GetElementDetails(Detail:TThemedTreeview):TThemedElementDetails; virtual;//v108//00589540
    function GetElementDetails(Detail:TThemedWindow):TThemedElementDetails; virtual;//v10C//005890F0
    function LoadFromStream(Stream:TStream):TCustomStyleServices; virtual;//v110//00589F08
    procedure SaveToStream(Stream:TStream); virtual;//v118//00589F60
    procedure UpdateThemes; virtual;//v11C//00589FE4
    constructor Create(); virtual;//v128//00586C54
  end;
  TSysBidiModeDirection = (sbmLeftToRight, sbmRightToLeft);
  TSysControl = class(TObject)
  published
    procedure Focused;//0058DFC8
    procedure UseRightToLeftAlignment;//0058E43C
    constructor Create(AHandle:NativeUInt);//0058DF48
    destructor Destroy();//0058DF78
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FFont:TFont;//f4
    FParent:TSysControl;//f8
    FHandle:NativeUInt;//fC
    destructor Destroy(); virtual;//0058DF78
    constructor Create(AHandle:NativeUInt); virtual;//v0//0058DF48
    procedure Focused; dynamic;//0058DFC8
    procedure UseRightToLeftAlignment; dynamic;//0058E43C
  end;
  TSysStyleHook = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure Refresh;//0058EBE8
    constructor sub_0058E480(AHandle:NativeUInt);//0058E480
    procedure Invalidate;//0058E9A8
    destructor Destroy();//0058E574
    procedure InvalidateNC;//0058E9C8
  public
    FHandle:NativeUInt;//f4
    FProcInstance:Pointer;//f8
    FSysControl:TSysControl;//fC
    FOrgWndProc:NativeInt;//f10
    FOverrideEraseBkgnd:Boolean;//f14
    FOverridePaint:Boolean;//f15
    FOverridePaintNC:Boolean;//f16
    FOverrideFont:Boolean;//f17
    FDoubleBuffered:Boolean;//f18
    FPaintOnEraseBkgnd:Boolean;//f19
    FFontColor:TColor;//f1C
    FBrush:TBrush;//f20
    FHandled:Boolean;//f24
    FParentColor:Boolean;//f25
    FStyleElements:TStyleElements;//f26
    FColor:TColor;//f28
    FFont:TFont;//f2C
    FText:string;//f30
    FHookedDirectly:Boolean;//f34
    destructor Destroy(); virtual;//0058E574
    //procedure v0(?:?); virtual;//v0//0058E7DC
    //function v4:?; virtual;//v4//0058ED6C
    procedure v8; virtual;//v8//0058E9DC
    procedure vC; virtual;//vC//0058E62C
    //procedure v10(?:?); virtual;//v10//0058E9E0
    procedure v14; virtual;//v14//0058EBDC
    //procedure v18(?:?; ?:?); virtual;//v18//0058E89C
    //procedure v1C(?:?); virtual;//v1C//0058F050
    //function v20:?; virtual;//v20//0058E848
    procedure v24; virtual;//v24//0058E92C
    constructor v28(AHandle:NativeUInt); virtual;//v28//0058E480
    procedure Invalidate; virtual;//v2C//0058E9A8
    procedure InvalidateNC; virtual;//v30//0058E9C8
    procedure Refresh; virtual;//v34//0058EBE8
    //procedure WMPaint(?:?); message WM_PAINT;//0058EE78
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//0058EBF8
    procedure WMNCPaint; message WM_NCPAINT;//0058EDA0
  end;
  TChildControlInfo = TChildControlInfo = record//size=C
Parent:HWND;//f0
ParentStyle:NativeInt;//f4
StyleHookClass:TSysStyleHookClass;//f8
end;;
  TCustomStyleEngine.TStyleEngineNotification = (snControlDestroyed, snStyleHookUnregistered);
  TCustomStyleEngine = class(TObject)
  published
    procedure UnRegisterStyleHook(ControlClass:TClass; StyleHookClass:TStyleHookClass);//0058DD8C
    procedure RegisterStyleHook(ControlClass:TClass; StyleHookClass:TStyleHookClass);//0058DC6C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
    procedure RegisterStyleHook(ControlClass:TClass; StyleHookClass:TStyleHookClass); virtual;//v8//0058DC6C
    procedure UnRegisterStyleHook(ControlClass:TClass; StyleHookClass:TStyleHookClass); virtual;//vC//0058DD8C
  end;
  TStyleManager.TStyleClassDescriptor = TStyleManager.TStyleClassDescriptor = record//size=10
f0:string;//f0
f4:string;//f4
f8:string;//f8
end;
Extension:string;//f0
Description:string;//f4
ResourceType:string;//f8
StyleClass:TCustomStyleServicesClass;//fC
end;;
  TStyleManager.TSourceInfo = TStyleManager.TSourceInfo = record//size=8
Data:TStyleManager.TStyleServicesHandle;//f0
StyleClass:TCustomStyleServicesClass;//f4
end;;

implementation

Initialization
//0079D63C
{*
 0079D63C    sub         dword ptr ds:[7CA768],1
>0079D643    jae         0079D651
 0079D645    movzx       eax,byte ptr ds:[79D654];0x7 gvar_0079D654
 0079D64C    mov         [007CA765],al;gvar_007CA765
 0079D651    ret
*}
Finalization
end.