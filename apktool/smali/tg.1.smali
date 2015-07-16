.class Ltg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lth;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lth;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Ltg;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Ltg;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Ltg;->c:Lth;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Ltg;->a:Landroid/content/Context;

    iget-object v1, p0, Ltg;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    iget-object v1, p0, Ltg;->c:Lth;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Ltg;->c:Lth;

    invoke-interface {v1, v0}, Lth;->a(Landroid/content/SharedPreferences;)V

    .line 42
    :cond_0
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Ltg;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
