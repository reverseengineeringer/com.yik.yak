.class public abstract LFw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:LDd;


# direct methods
.method public constructor <init>(LDd;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, LFw;->a:I

    .line 27
    iput-object p1, p0, LFw;->d:LDd;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LFw;->c:Ljava/lang/ref/WeakReference;

    .line 29
    iput p3, p0, LFw;->b:I

    .line 30
    return-void
.end method

.method static synthetic a(LFw;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, LFw;->a:I

    return v0
.end method

.method static synthetic a(LFw;I)I
    .locals 0

    .prologue
    .line 10
    iput p1, p0, LFw;->a:I

    return p1
.end method

.method static synthetic b(LFw;)LDd;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, LFw;->d:LDd;

    return-object v0
.end method

.method static synthetic c(LFw;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, LFw;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic d(LFw;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, LFw;->b:I

    return v0
.end method


# virtual methods
.method public abstract a(LDd;Landroid/view/View;I)V
.end method

.method public abstract b(LDd;Landroid/view/View;I)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    iget v0, p0, LFw;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LFw;->a:I

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 41
    new-instance v1, LFx;

    invoke-direct {v1, p0}, LFx;-><init>(LFw;)V

    .line 52
    iget v2, p0, LFw;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 53
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    iget v2, p0, LFw;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iput v4, p0, LFw;->a:I

    .line 57
    iget-object v1, p0, LFw;->d:LDd;

    iget-object v0, p0, LFw;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, p0, LFw;->b:I

    invoke-virtual {p0, v1, v0, v2}, LFw;->b(LDd;Landroid/view/View;I)V

    goto :goto_0

    .line 59
    :cond_1
    iput v4, p0, LFw;->a:I

    goto :goto_0
.end method
