.class public synthetic LFm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 169
    invoke-static {}, LDX;->a()[LDX;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LFm;->b:[I

    :try_start_0
    sget-object v0, LFm;->b:[I

    sget-object v1, LDX;->a:LDX;

    invoke-virtual {v1}, LDX;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, LFm;->b:[I

    sget-object v1, LDX;->b:LDX;

    invoke-virtual {v1}, LDX;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 133
    :goto_1
    invoke-static {}, LFn;->a()[LFn;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LFm;->a:[I

    :try_start_2
    sget-object v0, LFm;->a:[I

    sget-object v1, LFn;->a:LFn;

    invoke-virtual {v1}, LFn;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, LFm;->a:[I

    sget-object v1, LFn;->b:LFn;

    invoke-virtual {v1}, LFn;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
