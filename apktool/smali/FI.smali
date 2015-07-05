.class public LFI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFD;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, LFI;->a:F

    .line 15
    iput p2, p0, LFI;->b:F

    .line 16
    return-void
.end method


# virtual methods
.method public a(LFC;Ljava/util/Random;)V
    .locals 3

    .prologue
    .line 20
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, LFI;->b:F

    iget v2, p0, LFI;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, LFI;->a:F

    add-float/2addr v0, v1

    .line 21
    iput v0, p1, LFC;->f:F

    .line 22
    return-void
.end method
