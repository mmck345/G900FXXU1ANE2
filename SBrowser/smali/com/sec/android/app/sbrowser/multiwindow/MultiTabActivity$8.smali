.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMaxTabLimitReached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->createNewNormalTab()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setReturnTabDefault()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->finish()V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_NEWTAB_KEY_ANIM:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabEnterPortrait()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabExitPortrait()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabEnterLandscape()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAnimAddingNewTabExitLandscape()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method
