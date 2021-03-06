.class public Landroid/transition/Slide;
.super Landroid/transition/Visibility;
.source "Slide.java"


# static fields
.field private static final sAccelerator:Landroid/animation/TimeInterpolator;

.field private static final sDecelerator:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sAccelerator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sDecelerator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6

    if-eqz p4, :cond_0

    iget-object v1, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Landroid/transition/Slide;->sDecelerator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Landroid/transition/Slide;->sAccelerator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
