.class Landroid/inputmethodservice/ExtractEditLayout$1;
.super Ljava/lang/Object;
.source "ExtractEditLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/ExtractEditLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/ExtractEditLayout;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/ExtractEditLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    new-instance v2, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v3, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-virtual {v3}, Landroid/inputmethodservice/ExtractEditLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v4, v4, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    iget-object v4, v4, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v2, v3, v4, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    iput-object v2, v1, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    const/16 v2, 0x3ea

    iput v2, v1, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupWindowLayout:I

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    :cond_1
    return-void
.end method
