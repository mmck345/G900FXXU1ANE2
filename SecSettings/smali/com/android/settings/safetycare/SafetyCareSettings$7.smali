.class Lcom/android/settings/safetycare/SafetyCareSettings$7;
.super Ljava/lang/Object;
.source "SafetyCareSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareSettings;->checkEmerContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #calls: Lcom/android/settings/safetycare/SafetyCareSettings;->queryEmergencyContactSize(Landroid/content/Context;)I
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$300(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings$7;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    #getter for: Lcom/android/settings/safetycare/SafetyCareSettings;->mCompleteHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$400(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
