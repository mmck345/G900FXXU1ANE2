.class public Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsForSignatureBackupPin:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDeviceOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDeviceOrientation()I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v0, -0x1

    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_0

    if-ne v2, v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-ne v1, v4, :cond_4

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-ne v1, v5, :cond_6

    if-eq v2, v5, :cond_5

    if-ne v2, v6, :cond_6

    :cond_5
    const/16 v0, 0x8

    goto :goto_0

    :cond_6
    if-ne v1, v4, :cond_1

    if-eq v2, v5, :cond_7

    if-ne v2, v6, :cond_1

    :cond_7
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private handleNext()V
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v1, p0, v7}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/String;

    aput-object v7, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsForSignatureBackupPin:Z

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkSignatureBackupPin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v8, 0x1

    :cond_2
    :goto_1
    if-eqz v8, :cond_5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v1, "password"

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v6}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Password created/changed successfully."

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkBackupPin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const v1, 0x7f09079e

    invoke-direct {p0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Password change/creation failed."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showError(I)V
    .locals 7

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x4

    if-eq v3, v2, :cond_0

    const/high16 v3, 0x5

    if-eq v3, v2, :cond_0

    const/high16 v3, 0x6

    if-ne v3, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090790

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090792

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0090
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "forSignatureBackupPin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsForSignatureBackupPin:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    const v8, 0x7f040046

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    instance-of v8, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    const v8, 0x7f0b0090

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0b0091

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    const v8, 0x7f0b00ad

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v9, 0x200

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    const v8, 0x7f0b00af

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const v8, 0x7f0b008e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const/high16 v8, 0x4

    if-eq v8, v5, :cond_1

    const/high16 v8, 0x5

    if-eq v8, v5, :cond_1

    const/high16 v8, 0x6

    if-ne v8, v5, :cond_3

    :cond_1
    const/4 v3, 0x1

    :goto_0
    new-instance v8, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v9, 0x7f090241

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v10, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v3, :cond_6

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v8}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setInputType(I)V

    instance-of v8, v0, Landroid/preference/PreferenceActivity;

    if-eqz v8, :cond_2

    move-object v4, v0

    check-cast v4, Landroid/preference/PreferenceActivity;

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    const v2, 0x7f090241

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6, v6}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v7

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    const v8, 0x7f090790

    :goto_5
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    const v8, 0x7f090792

    goto :goto_5

    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/16 v1, 0x12

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    const v2, 0x7f090790

    :goto_6
    goto :goto_4

    :cond_9
    const v2, 0x7f090792

    goto :goto_6
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
