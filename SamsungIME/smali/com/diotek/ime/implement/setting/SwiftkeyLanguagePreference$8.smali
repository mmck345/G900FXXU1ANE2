.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->MobileDataWarningForWiFi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$8;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsCheckboxDontShowDownloadForWifi:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1302(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z

    return-void
.end method
