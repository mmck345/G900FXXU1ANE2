.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

.field private mFontSize:Landroid/preference/ListPreference;

.field private mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mLocale:Lcom/android/settings/accessibility/LocalePreference;

.field private mParent:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

.field private mPreset:Lcom/android/settings/accessibility/PresetPreference;

.field private mShowingCustom:Z

.field private mTypeface:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v9, "captioning_locale"

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    const-string v9, "captioning_font_size"

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0086

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    const v9, 0x7f0a0085

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const-string v9, "captioning_preset"

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v9, v7}, Lcom/android/settings/accessibility/PresetPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    const-string v9, "custom"

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    iput-boolean v12, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    const v9, 0x7f0a0082

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const v9, 0x7f0a0081

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [I

    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    array-length v9, v3

    invoke-static {v3, v11, v1, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v2

    invoke-static {v2, v11, v0, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v11, v1, v11

    const v9, 0x7f090943

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v11

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    const v9, 0x7f0a0084

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const v9, 0x7f0a0083

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_type"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_typeface"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private refreshPreviewText()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mParent:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mParent:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->refreshPreviewText()V

    :cond_0
    return-void
.end method

.method private refreshShowingCustom()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 12

    const/high16 v11, -0x100

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v6

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings/accessibility/PresetPreference;->setValue(I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v5

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValue(I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-nez v9, :cond_2

    const/4 v3, 0x0

    and-int/lit16 v9, v1, 0xff

    shl-int/lit8 v2, v9, 0x18

    :goto_0
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    const v10, 0xffffff

    or-int/2addr v10, v2

    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget-object v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-nez v8, :cond_0

    const-string v8, ""

    :cond_0
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v7, :cond_1

    const-string v7, ""

    :cond_1
    invoke-virtual {v9, v7}, Lcom/android/settings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_2
    or-int v3, v1, v11

    and-int v2, v1, v11

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_1

    const-string v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_2

    const-string v1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    const-string v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v4, p1, :cond_1

    const-string v4, "accessibility_captioning_foreground_color"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v4, p1, :cond_2

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v4, p1, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    :goto_1
    const-string v4, "accessibility_captioning_background_color"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const v4, 0xffffff

    and-int/2addr v4, v2

    const/high16 v5, -0x100

    and-int/2addr v5, v1

    or-int v0, v4, v5

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v4, p1, :cond_5

    const-string v4, "accessibility_captioning_edge_color"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v4, p1, :cond_6

    const-string v4, "accessibility_captioning_preset"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v4, p1, :cond_0

    const-string v4, "accessibility_captioning_edge_type"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setParent(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mParent:Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    return-void
.end method
