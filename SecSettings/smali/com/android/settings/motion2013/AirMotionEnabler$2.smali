.class Lcom/android/settings/motion2013/AirMotionEnabler$2;
.super Ljava/lang/Object;
.source "AirMotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionEnabler;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler$2;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$2;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$2;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_engine"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$2;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isCurrentAirmotionAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$2;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler$2;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #calls: Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$200(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$2;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_engine"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    :goto_1
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler$2;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #calls: Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$200(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler$2;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$000(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler$2;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #calls: Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V
    invoke-static {v2, v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$300(Lcom/android/settings/motion2013/AirMotionEnabler;Z)V

    goto :goto_0
.end method
