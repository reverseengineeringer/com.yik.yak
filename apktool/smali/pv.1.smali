.class public final Lpv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lpw;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lpt;

    invoke-direct {v0}, Lpt;-><init>()V

    sput-object v0, Lpv;->a:Lpw;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lpv;->a:Lpw;

    invoke-interface {v0, p0}, Lpw;->a(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lpv;->a:Lpw;

    invoke-interface {v0, p0}, Lpw;->b(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lpv;->a:Lpw;

    invoke-interface {v0, p0}, Lpw;->c(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lpv;->a:Lpw;

    invoke-interface {v0, p0}, Lpw;->d(Ljava/lang/String;)V

    .line 60
    return-void
.end method
