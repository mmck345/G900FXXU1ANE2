.class Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$2;
.super Ljava/lang/Object;
.source "SbrSelectPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;[Ljava/lang/String;[IZ[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    iput-object p2, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$2;->val$listView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$102(Z)Z

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$200()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    sget-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrWebSelectDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->mWebSelectDialog:Lorg/samsung/content/sbrowser/SbrWebSelectDialog;

    :cond_1
    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$000()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$000()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    const/4 v1, 0x0

    #setter for: Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->bWebSelectDialogIsUp:Z
    invoke-static {v0, v1}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$302(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Z)Z

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$000()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$2;->val$listView:Landroid/widget/ListView;

    #calls: Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->getSelectedIndices(Landroid/widget/ListView;)[I
    invoke-static {v1, v2}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$400(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;Landroid/widget/ListView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog$2;->this$0:Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;

    #calls: Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->notifyContentViewCorePopupCanceled()V
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$500(Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;)V

    invoke-static {}, Lorg/samsung/content/sbrowser/SbrSelectPopupDialog;->access$000()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->moveFocusToNext()V

    :cond_2
    return-void
.end method
