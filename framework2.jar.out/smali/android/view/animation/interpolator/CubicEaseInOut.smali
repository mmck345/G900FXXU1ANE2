.class public Landroid/view/animation/interpolator/CubicEaseInOut;
.super Ljava/lang/Object;
.source "CubicEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inout(F)F
    .locals 3

    const/high16 v2, 0x3f00

    const/high16 v1, 0x4000

    mul-float/2addr p1, v1

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    mul-float v0, v2, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/CubicEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method
