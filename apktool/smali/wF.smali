.class public LwF;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, LwF;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LwF;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->b()V

    .line 99
    :cond_0
    return-void
.end method

.method public static a(Lcom/nispok/snackbar/Snackbar;)V
    .locals 1
    .param p0    # Lcom/nispok/snackbar/Snackbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p0, v0}, LwF;->a(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V
    .locals 1
    .param p0    # Lcom/nispok/snackbar/Snackbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->a()V

    .line 49
    sput-object p0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    .line 50
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0, p1}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/app/Activity;)V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->b()V

    .line 55
    :cond_1
    sput-object p0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    .line 56
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0, p1}, Lcom/nispok/snackbar/Snackbar;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static a(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0    # Lcom/nispok/snackbar/Snackbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, LwF;->a(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V

    .line 68
    return-void
.end method

.method public static a(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0    # Lcom/nispok/snackbar/Snackbar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->a()V

    .line 82
    sput-object p0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    .line 83
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0, p1, p2}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/view/ViewGroup;Z)V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->b()V

    .line 88
    :cond_1
    sput-object p0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    .line 89
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0, p1, p2}, Lcom/nispok/snackbar/Snackbar;->b(Landroid/view/ViewGroup;Z)V

    goto :goto_0
.end method

.method public static b()Lcom/nispok/snackbar/Snackbar;
    .locals 1

    .prologue
    .line 105
    sget-object v0, LwF;->b:Lcom/nispok/snackbar/Snackbar;

    return-object v0
.end method
