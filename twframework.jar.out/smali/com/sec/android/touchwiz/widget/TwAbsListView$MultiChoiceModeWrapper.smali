.class Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setLongClickable(Z)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearChoices()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setLongClickable(Z)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwCustomMultiChoiceMode:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;

    return-void
.end method
