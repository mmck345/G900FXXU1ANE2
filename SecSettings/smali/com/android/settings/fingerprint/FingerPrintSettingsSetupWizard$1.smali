.class Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard$1;
.super Ljava/lang/Object;
.source "FingerPrintSettingsSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->showSensorErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "FingerPrintSettingsSetupWizard"

    const-string v1, "showSensorErrorDialog OK!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
