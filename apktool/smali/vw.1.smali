.class public abstract Lvw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:F

.field b:Ljava/lang/Class;

.field c:Z

.field private d:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lvw;->d:Landroid/view/animation/Interpolator;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvw;->c:Z

    .line 320
    return-void
.end method

.method public static a(F)Lvw;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lvx;

    invoke-direct {v0, p0}, Lvx;-><init>(F)V

    return-object v0
.end method

.method public static a(FF)Lvw;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lvx;

    invoke-direct {v0, p0, p1}, Lvx;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lvw;->d:Landroid/view/animation/Interpolator;

    .line 222
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lvw;->c:Z

    return v0
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public c()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lvw;->a:F

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lvw;->e()Lvw;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lvw;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public abstract e()Lvw;
.end method
