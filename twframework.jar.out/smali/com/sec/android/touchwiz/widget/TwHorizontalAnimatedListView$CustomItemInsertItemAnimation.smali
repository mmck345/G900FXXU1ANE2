.class Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;
.source "TwHorizontalAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomItemInsertItemAnimation"
.end annotation


# instance fields
.field mDuration:J

.field mItemIndex:I

.field private mProgress:F

.field mStartTime:J

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;-><init>(IZ)V

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mStartTime:J

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mDuration:J

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mItemIndex:I

    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 3

    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mStartTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mProgress:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mProgress:F

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertDrawCallback;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$600(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertDrawCallback;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mItemIndex:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$500(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mProgress:F

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertDrawCallback;->drawInsertItemAnimation(Landroid/graphics/Canvas;ILandroid/view/View;Landroid/graphics/Rect;F)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public isFinished()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mStartTime:J

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public start(JII)V
    .locals 2

    iput-wide p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mStartTime:J

    int-to-long v0, p4

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mDuration:J

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mItemIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$CustomItemInsertItemAnimation;->mProgress:F

    return-void
.end method
