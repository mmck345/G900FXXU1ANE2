.class Lcom/android/phone/RoamingSettings$2;
.super Ljava/lang/Object;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingSettings;->domesticCdmaVoiceRoamingSettingTreeClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RoamingSettings$2;->this$0:Lcom/android/phone/RoamingSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/RoamingSettings$2;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v1, v1}, Lcom/android/phone/RoamingSettings;->access$000(Lcom/android/phone/RoamingSettings;II)V

    iget-object v0, p0, Lcom/android/phone/RoamingSettings$2;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;)V

    return-void
.end method
